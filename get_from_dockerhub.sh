#!/usr/bin/env bash                                                                                                                         
                                                                                                                                            
mkdir -p cache_dir                                                                                                                          
export SINGULARITY_CACHEDIR=$PWD/cache_dir                                                                                                  
                                                                                                                                            
mkdir -p tmp_dir                                                                                                                            
export TMPDIR=$PWD/tmp_dir                                                                                                                  
                                                                                                                                            
# see https://github.com/wtsi-hgi/scrna_deconvolution_container                                                                             
rm -f scrna_deconvolution_latest.sif                                                                                                        
singularity pull docker://mercury/scrna_deconvolution      

rm -r cache_dir
rm -r tmp_dir
