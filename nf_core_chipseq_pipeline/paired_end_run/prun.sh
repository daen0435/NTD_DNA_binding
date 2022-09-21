#!/bin/bash
#SBATCH -p long
#SBATCH --job-name=pair_NTD_chip
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=daen0435@colorado.edu 
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=10gb
#SBATCH --time=24:00:00
#SBATCH --output=pnextflow.out
#SBATCH --error=pnextflow.err
pwd; hostname; date
echo "Lets go"
module load singularity/3.1.1
nextflow run nf-core/chipseq -r 1.2.1 \
-profile singularity \
--input pdesign.csv \
--fasta /scratch/Shares/public/genomes/Mus_musculus/UCSC/mm10/Sequence/WholeGenomeFasta/genome.fa \
--gtf /scratch/Users/daen0435/NTDsurvey/NTD_DNA_binding/nf_core_chipseq_pipeline/gencode.vM10.annotation.gtf \
--macs_gsize 2.7e9 \
--blacklist /scratch/Users/daen0435/NTDsurvey/NTD_DNA_binding/nf_core_chipseq_pipeline/mm10-blacklist.v2.bed \
--email daen0435@colorado.edu \
-resume \
-c nextflow.config
date