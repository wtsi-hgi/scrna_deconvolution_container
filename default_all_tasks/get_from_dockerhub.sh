#!/usr/bin/env bash                                                                                                                         
                                                                                                                                            
# this script is placed/run at /lustre/scratch123/hgi/projects/ukbb_scrna/pipelines/singularity_images/ 

# choose dockerhub image tag
# cf. https://github.com/wtsi-hgi/scrna_deconvolution_container
tag=1.0

mkdir -p cache_dir
export SINGULARITY_CACHEDIR=$PWD/cache_dir

mkdir -p tmp_dir
export TMPDIR=$PWD/tmp_dir

rm -f scrna_deconvolution_latest.sif || true
singularity pull docker://mercury/scrna_deconvolution:${tag}

# place as 'latest' tag for FCE scrna deconvolution pipeline to pick up.
# see https://gitlab.internal.sanger.ac.uk/gn5/single-cell-nextflow-ci/-/blob/deconv_nogenotype_sbw_Deconvolution_Exp4/wr_cloud_script.sh
ln -s scrna_deconvolution_${tag}.sif scrna_deconvolution_latest.sif
