These containers are set up for use in the sCNA deconvolution Nextflow pipeline:
- https://github.com/wtsi-hgi/nf_scrna_deconvolution

### containers

3 containers are used by the pipeline:
  
- main container, which is default for all steps:  
  cf. folder [default_all_tasks](default_all_tasks)  
  
-  container for souporcell step:    
  cf. folder [souporcell_task](souporcell_task)  
  
-  container for souporcell step:    
  pull dockerhub official R image: 
  `singularity pull --name rocker_tidyverse_4.1.0.img docker://rocker/tidyverse:4.1.0`         
