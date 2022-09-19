#!/bin/bash
#SBATCH -p long
#SBATCH --job-name=NTD_gzip_compress
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=daen0435@colorado.edu 
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=50gb
#SBATCH --time=36:00:00
#SBATCH --output=gzip_compress.out
#SBATCH --error=gzip_compress.err
pwd; hostname; date


gzip -r /scratch/Users/daen0435/NTDsurvey/NTD_DNA_binding/raw_fastq