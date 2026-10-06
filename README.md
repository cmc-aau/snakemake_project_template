# Snakemake workflow: `<snakemake_template>`

[![Snakemake](https://img.shields.io/badge/snakemake-≥8.0-brightgreen.svg)](https://snakemake.github.io)
[![Tests](https://github.com/<owner>/<repo>/actions/workflows/main.yml/badge.svg)](https://github.com/<owner>/<repo>/actions/workflows/main.yml)

This is a (working) template repository designed for scientific projects where data is processed using [Snakemake](https://snakemake.readthedocs.io/).

## Requirements
All required tools are automatically installed by Snakemake using conda environments or singularity/apptainer containers, however Snakemake itself needs to be installed first. Load a software module with Snakemake, use a native install, or use the `environment.yml` file to create a conda environment for this particular project using fx `conda env create -n <snakemake_template> -f environment.yml`.

## Usage
Adjust `config/config.yaml`, then run `snakemake --cores <n>`, or on SLURM submit `slurm_submit.sbatch` (single job) or `slurm_submit_cluster.sbatch` (cluster mode, see the [BioCloud guide](https://cmc-aau.github.io/biocloud-docs/guides/snakemake/biocloud/)).
The usage of this workflow is also described in the [Snakemake Workflow Catalog](https://snakemake.github.io/snakemake-workflow-catalog/?usage=<owner>%2F<repo>).

# Your to-do's before publishing this workflow
* Replace `<owner>` and `<repo>` with the correct values in this `README.md` as well as in files under `.github/workflows/`.
* Replace `<snakemake_template>` with the workflow/project name (can be the same as `<repo>`) here as well as in the `environment.yml`, `slurm_submit.sbatch`, and `slurm_submit_cluster.sbatch` files.
* Add more requirements to the `environment.yml` file or `yaml` files under `workflow/envs/` if needed. Note that the channel order is important as the default conda config used in the Tests GitHub action has strict mode enabled, and snakemake recommends it.
  * Consider running `snakemake --containerize` afterwards to generate a `Dockerfile`. A GitHub action will automatically build and publish it.
* Fill in fields in this `README.md` file, in particular provide a proper description of what the workflow does with any relevant details and configuration.
* Enable [release-please](https://github.com/googleapis/release-please) by allowing GitHub actions to approve pull requests (repo Settings->Actions->General->Check allow at the very bottom)
* The workflow will automatically appear in the public [Snakemake workflow catalog](https://snakemake.github.io/snakemake-workflow-catalog/) once the repository has been made public and the GitHub actions provided with this template repo succeed. The link under "Usage" will point to the usage instructions if `<owner>` and `<repo>` were correctly set. If you don't want to publish the workflow just delete `.github/workflows/`, `.template/`, and `.snakemake-workflow-catalog.yml`.
* Consider the license - [Choose a license](https://choosealicense.com/)
* Start developing your workflow
  * Consider adding a brief summary of all workflow steps to this readme file
  * Remember to **properly** describe all available options in the `config/config.yaml` file in the `config/README.md` file
  * Add minimal test data and a `config/config.yaml` file under `.test/` for unit tests.
  * Before commiting anything, always run `snakefmt workflow/rules/*`, `snakemake --lint`, and `snakemake --directory ./test --cores 8` to avoid actions failing.
* Lastly, DELETE this **TODO** section when finished with all of the above!

