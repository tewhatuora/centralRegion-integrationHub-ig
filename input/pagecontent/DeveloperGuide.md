
## API Client Provisioning

The one-off process for registering an API Client for the Central Region Integration Hub (iHub) is as follows:

<figure>
{% include apiAuthorisation.svg %}
</figure>


* [1] You initiate API Client Provisioning process by generating an RSA PrivateKey and matching PublicKey Certificate
* [2] Send your **PublicKey Certificate** to MidCentral IT Support team; requesting API access.
* [3-5]  MidCentral IT Support Team registers your API Client in Azure AD (our IdProvider).
* [6-8]  MidCentral IT Support Team loads your provided PublicKey Certificate against your API Client registration into AzureAD.
* [9-11] MidCentral IT Support Team grants your API Client appropriate access roles
* [12] MidCentral IT Support Team returns ClientId and Scope Identifiers that match your API Client Registration.
* [13] You load PrivateKey, PublicKey, ScopeId and ClientId into your API Client software.

### Key Generation
Step 1 of the process involves generation of a set of RSA keys, giving both PrivateKey and matching PublicKey Certificate.
This can be done with the following command:

```bash
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out myIHubClient.crt -keyout myIHubClient.pvtKey -subj '/L=City/O=Company Name/OU=Developer/CN=email.address@example.co.nz'
```

Depending upon which [Microsoft Authentication Library (MSAL)](https://learn.microsoft.com/en-us/azure/active-directory/develop/msal-overview) you use to
request access tokens, you may need a `.pubKey` rather than `.crt` file.  the PublicKey can be extracted from the `.crt` with the following OpenSSL command:

```bash
openssl x509  -in myIHUbClient.crt -noout -pubkey > myIHubClient.pubKey
```

### Key Expiry and Rollover
* Keys for development environment [DEV] will be accepted with 1 year expiry dates (ie: 365 days)
* Keys for uat and production [PREPROD, PROD] are limited to 6 months expiry dates (ie: 180 days). This means that Steps 1, 2 & 3 in the above process must be repeated every 180 days for uat [PREPROD] and production [PROD] environments.

### IdProvider, Scope and Client Identifiers
At the completion of the API Client Provisioning process, MidCentral IT Support Team will return the following pieces of information to you:

| Token	             |  Description	                                           | DEV Environment Value                                                                    |
|:-------------------|:--------------------------------------------------------|:-----------------------------------------------------------------------------------------|
|**IdProvider UUID** | UUID Identifying which iHub IdProvider is being used    | 8407d85d-ed23-4577-91c2-92e22dafe8e5                                                     |
|**IdProvider URL**	 | URL to the iHub IdProvider being used	               | https://login.microsoftonline.com/8407d85d-ed23-4577-91c2-92e22dafe8e5/oauth2/v2.0/token |
|**Scope UUID**	     | UUID Identifying which iHub environment [DEV, UAT, PROD] you are using | 3a7df794-61b6-4b09-b6fe-eb6f6e10021d                                      |
|**Scope URI**       | Identifying which iHub environment [DEV, UAT, PROD] you are using      |	api://0e1840b7-b897-4573-b677-489731b1e319/.default                       |
|**ClientId UUID**   | Identies the newly registered iHub API Client                          | _per client identifier_                                                   |

**Notes:**

* Depending upon which [Microsoft Authentication Library (MSAL)](https://learn.microsoft.com/en-us/azure/active-directory/develop/msal-overview) you use to obtain
an access token, you will need to use **either** IdProvider UUID or URL;  and either Scope UUID or URI.

* `Scope UUID` and `URI` for UAT and PROD environments will be provided as required.

* `Client UUID`s issued for DEV environment will not work on UAT or PROD environments, and vice-versa.


## API Client Authentication

Once your API Client has been provisioned, you are then able to request access tokens from the IdProvider, and then use the access
 token to make FHIR API calls against the Central Region Integration Hub (iHub):

<figure>
{% include apiRequest.svg %}
</figure>

* [1] You generate an access request JWT and sign it with your PrivateKey.
* [2] Send the signed access request to our IdProvider in a REST API call.
* [3] IdProvider will validate the access request JWT with your PublicKey.
* [4] IdProvider generates and signs an access token JWT
* [5] IdProvider sends you the access token JWT in the API response

Our IdProvider returns a base64 encoded string, which is a JWT;  you can inspect the contents of your JWTs at [jwt.io](https://jwt.io/). The access token expires after 30 minutes; when this happens, your software can repeat steps 1 through 6 to obtain another.

Once you have an access token you can authenticate multiple FHIR API calls by placing the access token into the `Authorization` header with `Bearer *access_token*`

* [1-5] API Client software makes an OAuth client credentials request with signed JWT for an access token against our IdProvider.
* [6] API client software makes FHIR API call with access token included in Authorization header.
* [7] Integration Hub verifies the access token with the IdProvider.
* [8] IdProvider acknowledges access token is good.
* [9] Integration Hub fulfills the API request.
* [10] Integration Hub returns FHIR API response.

## Sample Code
Sample code is available for the following languages, mostly using the 
[Microsoft Authentication Library (MSAL)](https://learn.microsoft.com/en-us/azure/active-directory/develop/msal-overview) library.

* [cURL & bash](#curl--bash)
* [javascript](#javascript)
* [python](#python)
* [C# .Net](#c-net)

Depending upon which technology you are using, you will need the following:

* `UUID` or `URL` address of the the IdProvider we're using.
* Scope `UUID` or `URI` to indicate which Integration Hub environment [DEV, UAT, or PROD] you will be accessing. 
* ClientId `UUID` value issued to you as part of the API Client Provisioning Process
* `privateKey` Your generated private key for signing the access token request.
**either**  
    * the thumbnail of your PublicKey Certificate in either `base64` or `hex` encoding depending upon the authentication library you’re using **or**  
    * the PublicKey Certificate - which your authentication library will use to generate the thumbnail

The following code samples do the following:

1. Assemble and sign JWT - certificate signed assertion intended for DEV environment
2. Request access token by making HTTP request for DEV environment Scope UUID to the IdProvider
3. Extract the access token from the response.

### cURL & bash 
This `cURL` & `bash` example is a `bash` script that makes use of `cURL`, `openSSL`, `jq`, `base64`, `xxd` and `sed` to assemble and sign the JWT token, makes the access request, and finally displays the access token.   `jq`  is a lightweight and flexible command line [JSON processor](https://jqlang.github.io/jq/).

```bash
#!/bin/bash

# Inspired by implementation by Will Haley at:
#   http://willhaley.com/blog/generate-jwt-with-bash/

# Pre-requisites
#    - openssl  -  Linux or git bash on Windows
#    - jq       -  from https://stedolan.github.io/jq/
#    - base64   -  Linux  or git for Windows
#    - xxd      -  Linux  or git for Windows
#    - sed      -  Linux  or git for Windows

#
## We're using MidCentral's IdProvider and DEV Integration Hub environment
idProvider="https://login.microsoftonline.com/8407d85d-ed23-4577-91c2-92e22dafe8e5/oauth2/v2.0/token"
scope="api://0e1840b7-b897-4573-b677-489731b1e319/.default"

#
## API clientId, Certificate & pvtKey
myClientId="a UUID goes here"
myCrtFile="${HOME}/.ssh/myIHubClient.crt"
myPvtKeyFile="${HOME}/.ssh/myIHubClient.pvtKey"    ## Obviously this should be more secure

# errors in pipelines please
set -o pipefail

#
##  We will need a UUID
uuid()
{
    local N B C='89ab'
    for (( N=0; N < 16; ++N ))
    do
        B=$(( $RANDOM%256 ))                                 # A random number in range 0 - 255
        case $N in
            6)
                printf '4%x' $(( B%16 ))                     # '4' plus a random HEX digit
                ;;
            8)
                printf '%c%x' ${C:$RANDOM%4:1} $(( B%16 ))   # A random char from $C plus random HEX digit
                ;;
            3 | 5 | 7 | 9)
                printf '%02x-' $B                            # 2 random HEX digits plus '-'
                ;;
            *)
                printf '%02x' $B                             # 2 random HEX digits
                ;;
        esac
    done
    echo
}

# JWT has a header...
header_template='{
    "typ": "JWT",
    "alg": "RS256",
    "x5t": "thumbnail"
}'


#
## Use JQ to fill in the template...
build_header() {
    local thumbnail=$1
    jq -c --arg x5t "$thumbnail" '.x5t = $x5t' <<<"$header_template" | tr -d '\n'
}

# JWT also has a set of claims...
claims_template='{
  "iss": "issuer",
  "sub": "subject",
  "aud": "audience",
  "jti": "v4uuid",
  "exp": "expiry",
  "nbf": "notbefore"
}'

#
## Use JQ to fill in the template...
build_claims() {
        local clientId=$1
        jq -c \
            --arg iss "$clientId" \
            --arg aud "$idProvider" \
            --arg uuid $(uuid) \
            --arg iat_str "$(date +%s)" \
        '
        ($iat_str | tonumber) as $iat
        | .iss = $iss
        | .sub = $iss
        | .aud = $aud
        | .jti = $uuid
        | .nbf = $iat
        | .exp = ($iat + 540)
        ' <<<"$claims_template" | tr -d '\n'
}

##  rfc-4648 - URL safe version of BASE64
##      '_'+ and '/'  are switched to '-' and '_';     remove (optional) padding '='
b64enc() { base64 | tr '+/' '-_' | tr -d '='; }   
b64dec() { base64 --decode; }

##
##  Use JQ to prettify json;    remove newlines
json() { jq -c . | LC_CTYPE=C tr -d '\n'; }

## Let openssl do all the signing work...
rs_sign() { openssl dgst -binary -sha256 -sign $1; }

#
## Assemble (and sign) JWT assertion
assembleJWT() {
        local header payload sig cert=$1 pvtKey=$2 clientId=$3

        ## Gotta get the thumbnail from the publicKey....in base64
        thumbnail_hex=$(openssl x509 -noout -fingerprint -sha1 -in $cert  | sed -e 's/://g' -e 's/.*=//')
        thumbnail_b64=$(xxd -r -p <<<$thumbnail_hex | b64enc)

        ## Assemble build header & payload
        header=$(build_header $thumbnail_b64)
        payload=$(build_claims $clientId)

        ## Glue them together and BASE64 encode
        signed_content="$(json <<<"$header" | b64enc).$(json <<<"$payload" | b64enc)"

        ## Get signature with privateKey
        sig=$(printf %s "$signed_content" | rs_sign $pvtKey | b64enc )

        ## Here's the JWT - with Certificate Signed Assertion
        printf '%s.%s\n' "${signed_content}" "${sig}"
}


#
## Put a JWT with Certificate Signed Assertion together; and make request for accessToken...
getToken() {
    local crtFile=$1 pvtKeyFile=$2 clientId=$3

    jwt=$(assembleJWT $crtFile $pvtKeyFile $clientId)

    # echo "Client Assertion:"
    # echo $jwt

    curl -s -X POST "$idProvider" \
        -H "Content-Type: application/x-www-form-urlencoded" \
        -d "client_assertion_type=urn:ietf:params:oauth:client-assertion-type:jwt-bearer\
    &client_assertion=$jwt\
    &client_id=$clientId\
    &scope=$scope\
    &grant_type=client_credentials" | jq -r .access_token
}

# go get accessToken
accessToken=$(getToken $myCrtFile $myPvtKeyFile $myClientId)

echo "Access Token:" 
echo $accessToken
```
### javascript

This javascript example lets the MSAL do all the hard work; you need to have the following environment variables set:
* IHUB_PVT_KEY - holds the contents of your `.pvtKey` file.
* IHUB_CERT_THUMBNAIL - the thumbnail of your `.crt` file in `hex` format
* IHUB_CLIENT_ID - the client UUID returned in the provisioning process.

```javascript
// *
// ** Grab the relevant Microsoft Authentication Library
// *
const msal = require('@azure/msal-node');
const AuthToken = require('@azure/msal-common').AuthToken;

const request = require('request');   // We're going to make an HTTP Request to mockServer...

process.env.HTTP_PROXY="";    // Tell the proxy to go away

// *
// **  We need five things to use MSAL ...
// *
const idProvider="https://login.microsoftonline.com/8407d85d-ed23-4577-91c2-92e22dafe8e5/oauth2/v2.0/token"
const devScope="api://0e1840b7-b897-4573-b677-489731b1e319/.default"

const pvtKey =       process.env['IHUB_PVT_KEY']?.replace(/\n\s+/g, "\n");          //  The contents of the .pvtFile not the file location
const crtThumbnail = process.env['IHUB_CERT_THUMBNAIL'];                            // in HEX rather than BASE64
const clientId =     process.env['IHUB_CLIENT_ID'];

// *
// **   Use MSAL to go get an accessToken
// *
const msalConfig = {
auth: {
    clientId: clientId,
    authority: idProvider,
    clientCertificate: {
    thumbprint: crtThumbnail,
    privateKey: pvtKey
    }
},
system: {
    loggerOptions: {
    loggerCallback(loglevel, message, containsPii) {
        console.log(message);
    },
    piiLoggingEnabled: false,
    logLevel: msal.LogLevel.Info,
    }
}
};

// Create msal application object
const cca = new msal.ConfidentialClientApplication(msalConfig);

// We're making a request for a particular scope...
const clientCredentialRequest = {
    scopes: [devScope],
    skipCache: true
};

console.log("Retrieving access token from IdProvider....");
cca.acquireTokenByClientCredential(clientCredentialRequest).then(response => {
    console.log("iHub IdProvider Response: ", response);

   // Retrieve the acces token...
   let accessToken = response.accessToken;

   // ...and now we have the access token
   console.log(accessToken);
});
```

### python

This python example lets the MSAL do all the hard work; you need to have the following environment variables set:
* IHUB_PVT_KEY - holds the contents of your `.pvtKey` file.
* IHUB_CERT_THUMBNAIL - the thumbnail of your `.crt` file in `hex` format
* IHUB_CLIENT_ID - the client UUID returned in the provisioning process.


```python
#!/usr/bin/env python

## Pre-requisites
##      pip install msal
##      pip install pyjwt
##      pip install requests

from msal import ConfidentialClientApplication
import requests
import jwt
import json
import sys
import os
import re

## We've got utf-8 strings in our response JSON
sys.stdout.reconfigure(encoding='utf-8')

##
##   We need five things to use MSAL ...
##
const idProvider="https://login.microsoftonline.com/8407d85d-ed23-4577-91c2-92e22dafe8e5/oauth2/v2.0/token"
const devScope="api://0e1840b7-b897-4573-b677-489731b1e319/.default"

pvtKey =       re.sub('\n\s+', '\n', os.environ['IHUB_PVT_KEY'])            ##  The contents of the .pvtFile not the file location
crtThumbnail = os.environ['IHUB_CERT_THUMBNAIL']                            ##  in HEX rather than BASE64
clientId =     os.environ['IHUB_CLIENT_ID']


## Setup the MSAL application
cca = ConfidentialClientApplication(
    clientId,
    authority=idProvider,
    client_credential={
        "thumbprint": crtThumbnail, 
        "private_key": pvtKey,
        "scope": devScope,
        "grant_type": "client_credentials"
    }
)

#
##  Go get the AccessToken
result = cca.acquire_token_for_client(scopes=[devScope])

#
## Make sure that worked
if not "access_token" in result:
    print(result.get("error"))
    print(result.get("error_description"))
    print(result.get("correlation_id")) 
    exit(1)

#
## unpick the access token
accessToken = result["access_token"]

print(accessToken)
```

### C# .Net

This C# .Net example lets the MSAL do all the hard work; you need to have the following pre-requisites in place:
* Your `.crt`~and .pvtKey` files need to be available
* [Microsoft.Identity.Client](https://www.nuget.org/packages/Microsoft.Identity.Client/) package from nuget
* [Newtonsoft.Json](https://www.nuget.org/packages/Newtonsoft.Json) package from nuget


``` c#
using Microsoft.Identity.Client;
using System.Security.Cryptography.X509Certificates;
using Newtonsoft.Json;

using System;
using Newtonsoft.Json.Linq;
class Program
{
    public static async Task Main(string[] args)
    {
        // We're using MidCentral's Azure AD...
        var tenantId = "8407d85d-ed23-4577-91c2-92e22dafe8e5";   

        // My client and certificate details...
        var clientId = "your client UUID";
        var myCRTFile = "location of your .crt file";
        var myKeyFile = "location of your .pvtkey file";


        // Assemble CRT & pvtKey into useable certificate
        X509Certificate2 myCert = X509Certificate2.CreateFromPemFile(myCRTFile, myKeyFile);

        // We want to use DEV instance of IHub
        var scopes = new String[] { "api://0e1840b7-b897-4573-b677-489731b1e319/.default" };

        // Build CCA
        IConfidentialClientApplication app = ConfidentialClientApplicationBuilder.Create(clientId)
            .WithCertificate(myCert)
            .WithTenantId(tenantId)
            .Build();

        // Go get the accessToken
        AuthenticationResult tokenResult = await app.AcquireTokenForClient(scopes)
            .ExecuteAsync();


        // Let's make an HTTP request ....
        using var client = new HttpClient();

        client.DefaultRequestHeaders.Add("Authorization", "Bearer " + tokenResult.AccessToken);       // put the accessToken in place
        client.DefaultRequestHeaders.Add("User-Agent", "C# Testing Client");                          // WAF won't let request through without a User-Agent header...

        var url = "https://test-smilecdr.mdhb.health.nz:8000/Patient?_summary=count";    // Count the no of Patient records

        var response = await client.GetAsync(url);
        if (response.IsSuccessStatusCode)
        {
            // Grab the response (as a JSON string)
            var responseContent = await response.Content.ReadAsStringAsync();

            // Turn response into an object with named properties
            JObject result = (JObject)JsonConvert.DeserializeObject(responseContent);

            Console.WriteLine("There are {0} Patients", result.GetValue("total"));
        }
        else
        {
            Console.WriteLine("Failed - " + response.ToString());
        }            
    }
}
```

## API Client Access Roles

During the provisioning process, each API Client will be assigned one or more API Access roles that governs which API endpoints they will have access to. The roles are:

| Role	                     | Access Notes                                                                                                        |
|:---------------------------|:--------------------------------------------------------------------------------------------------------------------|
| Patient.ReadAll            | Grants `read-only` access to Patient, Flag, AllergyIntolerance, ClinicalImpression and Practitioner FHIR resources. |
| ServiceRequest.ReadAll     | Grants `read-only` access to ServiceRequest FHIR resources                                                          |
| Subscription.ReadWrite     | Grants `read/write` access to Subscription FHIR resources that the client has made                                  |

**Note:**  all roles also grant `read-only` access to CodeSystem, CodeValue and ConceptMap resources