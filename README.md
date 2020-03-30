# python-dev-container
Podman build directives for creating a python development container.

## Getting Started

These instructions will get you a copy of the python development container up and running on your local machine.

### Prerequisites

What things you need to install the software and how to install them

```
podman (or docker)
buildah
```

### Installing

Clone the repository
```
git clone git@github.com:apigban/python-dev-container.git
```

Navigate inside the cloned repo and run ./build.sh
```
cd python-dev-container && ./build.sh
```

Check using buildah images if image exists
```
buildah images
```

Modify the PROJECT_PATH in the podman-run.sh script and start the container
```
PROJECT_PATH=/home/apigban/Desktop/Personal/PCSO_results_scraper/ 

./podman-run.sh 
```

## Built With

* [podman](https://podman.io/) - The container engine used
* [buildah](https://github.com/containers/buildah) - OCI compliant Image builder

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)