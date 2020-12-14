#### scrna_deconvolution_container

autobuilds: see https://hub.docker.com/repository/docker/mercury/scrna_deconvolution

manual build:

```
docker build --tag scrna_deconvolution_container:1.0 .

# check that conda env is loaded on 'run":
docker run scrna_deconvolution_container:1.0 conda env list
# check that path has conda env bin dir first:
docker run scrna_deconvolution_container:1.0 printenv
```
