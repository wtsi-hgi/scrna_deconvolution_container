#### scrna_deconvolution_container

- auto-build:  
    see https://hub.docker.com/repository/docker/mercury/scrna_deconvolution

- manual build:

```
docker build --tag scrna_deconvolution_container:1.0 .

# check that conda env is loaded on 'run":
docker run scrna_deconvolution_container:1.0 conda env list

# check that path has conda env bin dir first:
docker run scrna_deconvolution_container:1.0 printenv
```

- Convert docker image to singularity:

```
singularity pull docker://mercury/scrna_deconvolution

## option 1 (pull first):
singularity pull docker://mercury/scrna_deconvolution:latest 
# check conda env is loaded by default (requires --containall):
singularity exec --containall scrna_deconvolution_latest.sif conda env list

## option 2 (single command, exec directly from Dockerhub):
singularity exec --containall docker://mercury/scrna_deconvolution:latest conda env list

## option 3 (user Docker to create singularity image):
export IMAGE=mercury/scrna_deconvolution:latest
mkdir -p ~/singu &&  rm -rf singu/*.sif
docker run -v /var/run/docker.sock:/var/run/docker.sock -v ~/singu:/output --privileged -t --rm quay.io/singularity/docker2singularity $IMAGE
# check image:
singularity shell --containall singu/mercury_scrna_deconvolution-*.sif  conda env list
```

