# Introduction 
This is the FSH (FHIR Shorthand) source for the Te Whatu Ora, Central Region, Integration Hub FHIR ImplementationGuide.
It describes the APIs available in the new Central Region FHIR Integration platform. 

You can learn about Learn about FSH (FHIR Shorthand) at - [FSH School](https://fshschool.org/)

```bash
sushi - validates the FSH source and generates the matching FHIR ImplementationGuide
```

# Environment setup

The following dependancies are required to build and publish the IG package.

- nodejs
- nvm (node version manager)
- sushi
- jekyll
- graphviz (dot)

```bash
sudo apt-get install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
nvm install 18
nvm use 18
npm install
npm install -g fsh-sushi
sudo apt-get install jekyll
sudo apt-get install graphviz
```

# Build and Publish IG

Generate the FHIR from the FSH

```bash
sushi build
```

Download / Update the publisher (must run when running for only the first time)

```bash
./_updatePublisher.sh
```

Running the publisher

```bash
./_genonce.sh
```

This will generate the static HTML assets and IG zip package in ./output/

# API Provider - HL7 v2.4 Listener
The Central Region Integration Platform provides a FHIR facade for the following HL7 v2.4 messages:
* ADT A28 - Create New Patient
* ADT A31 - Update Patient (Not visit related)
* ADT A40 - Merge Patient via Patient Identifier List
* REF I12 - Add Referral
* REF I13 - Update Referral
* REF I14 - Delete Referral

