# Snakemake workflow: `<snakemake_template>`

[![Snakemake](https://img.shields.io/badge/snakemake-≥7.18.2-brightgreen.svg)](https://snakemake.github.io)
[![GitHub actions status](https://github.com/<owner>/<repo>/workflows/Tests/badge.svg?branch=main)](https://github.com/<owner>/<repo>/actions?query=branch%3Amain+workflow%3ATests)

This is a (working) template repository designed for scientific projects where data is processed using [Snakemake](https://snakemake.readthedocs.io/).

## Requirements
All required tools are automatically installed by Snakemake using conda environments or singularity/apptainer containers, however Snakemake itself needs to be installed first. Load a software module with Snakemake, use a native install, or use the `environment.yml` file to create a conda environment for this particular project using fx `mamba env create -n <snakemake_template> -f environment.yml`.

## Usage
Adjust the `config.yaml` files under both `config/` and `profiles/` accordingly, then simply run `snakemake --profile profiles/<subfolder>` or submit a SLURM job using the `slurm_submit.sbatch` example script.
The usage of this workflow is also described in the [Snakemake Workflow Catalog](https://snakemake.github.io/snakemake-workflow-catalog/?usage=<owner>%2F<repo>).

# TODO
* Replace `<owner>` and `<repo>` with the correct values in this `README.md` as well as in files under `.github/workflows/`.
* Replace `<snakemake_template>` with the workflow/project name (can be the same as `<repo>`) here as well as in the `environment.yml` and `slurm_submit.sbatch` files.
* Add more requirements to the `environment.yml` file if needed, however tools for each Snakemake rule should **NOT** go here, they should be configured separately for each rule instead in `yaml` files under `envs/`.
* Fill in fields in this `README.md` file, in particular provide a proper description of what the workflow does with any relevant details and configuration.
* The workflow will occur in the public Snakemake workflow catalog once the repository has been made public and the provided GitHub actions finish correctly. Then the link under "Usage" will point to the usage instructions if `<owner>` and `<repo>` were correctly set. If you don't want to publish the workflow just delete the `.github/workflows/` and `.template/` folders and `snakemake-workflow-catalog.yml`.
* Consider the license - [Choose a license](https://choosealicense.com/)
* DELETE this **TODO** section when finished with all of the above, and then start developing your workflow!
