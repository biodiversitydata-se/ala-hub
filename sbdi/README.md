# Ala-hub

## Setup

Create data directory at `/data/ala-hub` and populate as below (it is easiest to symlink the config files to the ones in this repo):
```
mats@xps-13:/data/ala-hub$ tree
.
└── config
    ├── ala-hub-config.properties -> /home/mats/src/biodiversitydata-se/ala-hub/sbdi/data/config/ala-hub-config.properties
    ├── charts.json -> /home/mats/src/biodiversitydata-se/ala-hub/sbdi/data/config/charts.json
    └── grouped_facets_default.json -> /home/mats/src/biodiversitydata-se/ala-hub/sbdi/data/config/grouped_facets_default.json
```

This project depends on the SBDI version of the [biocache-hubs](https://github.com/biodiversitydata-se/biocache-hubs) plugin. There are two ways to set it up locally. The first is to run biocache-hubs as a local project dependency. Then your local changes to biocache-hubs will be reflected when you run ala-hub.
1. Clone [biocache-hubs](https://github.com/biodiversitydata-se/biocache-hubs) into the same parent directory as ala-hub
2. Set the `inplace` variable in build.gradle and settings.gradle to `true` 
3. When you run ala-hub it will use your local biocache-hubs project

The other way is to use the pre-built biocache-hubs dependency from [GitHub packages](https://github.com/biodiversitydata-se/biocache-hubs/packages/2343865). To be able to access GitHub packages you need a [GitHub access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens#creating-a-personal-access-token-classic) with the `read:packages` scope. Once you have that you need to put it in an environment variable in the shell where you will run ala-hub:
```
export READ_PACKAGES_TOKEN=my-secret-token
```

## Usage

Run locally:
```
make run
```

Build and run in Docker (using Tomcat):
```
make run-docker
```

Make a release. This will create a new tag and push it. A new Docker container will be built on Github.
```
mats@xps-13:~/src/biodiversitydata-se/ala-hub (master *)$ make release

Current version: 1.0.1. Enter the new version (or press Enter for 1.0.2): 
Updating to version 1.0.2
Tag 1.0.2 created and pushed.
```

## Building
This project depends on the SBDI version of the [biocache-hubs](https://github.com/biodiversitydata-se/biocache-hubs) plugin. The jar-file is accessed from [GitHub packages](https://github.com/biodiversitydata-se/biocache-hubs/packages/2343865) when the project is built on GitHub. Since reading from GitHub packages requires a token a [secret](https://github.com/biodiversitydata-se/ala-hub/settings/secrets/actions) has been added to this project with a token that has the `read:packages` scope.
