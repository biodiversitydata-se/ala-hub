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
