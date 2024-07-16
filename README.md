# OpenSIPS Control Panel Docker Image

This repository can be used to build a Docker image with **OpenSIPS Control Panel**. This image is meant to be **extended** and **customized** for different **OpenSIPS Community Edition** projects.

**https://controlpanel.opensips.org/**


### Building image
You can build the Docker image by running:

```
make build
```

This command will build a docker image with the tag `opensips/opensips-cp:latest` with `master` version of `opensips-cp`. To build a specific version of `opensips-cp` you can run:

```
OPENSIPS_CP_VERSION=9.3.4 make build
```

Makefile also includes a `start` target which can be used to start a container with the built image and expose the web interface on `port 80`.

### Modules
Your **[modules configuration file](modules.inc.php)** will be **loaded automatically** in your new image if you place it in the **same directory** as your Dockerfile.

### Other configurations
You can also mount your own **configuration shell scripts** in the `/docker-entrypoint.d/` directory (such as a script to configure the database connection). Only the `.sh` files from this directory will be **executed at container startup**.

### Packages on Docker Hub
You can find realeased docker packages on Docker Hub at **https://hub.docker.com/r/opensips/opensips-cp**.
