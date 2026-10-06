#!/usr/bin/bash -l
#SBATCH --job-name=<snakemake_template>
#SBATCH --output=job_%j_%x.out
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G
#SBATCH --time=1-00:00:00
#SBATCH --mail-type=END,FAIL,TIME_LIMIT_90
#SBATCH --mail-user=abc@bio.aau.dk

# Cluster mode: each task is submitted as a separate SLURM job.
# Never set a partition, it's selected automatically.

# Exit on first error and if any variables are unset
set -eu

# Activate conda environment with snakemake and the SLURM executor plugin
conda activate <snakemake_template>

# Render a DAG to visualize the workflow (optional)
mkdir -p results
snakemake --dag | dot -Tsvg > results/dag.svg

# Main workflow. The "SLURM job context" warning can be ignored
snakemake \
  --executor slurm \
  --jobs 50 \
  --default-resources mem_mb=1024 runtime=60 \
  --keep-going \
  --rerun-incomplete

# Generate a report once finished (optional)
snakemake --report results/report.html
