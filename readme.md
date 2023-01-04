# How to use this Repo
Note: This repo should **NOT** be run as is.  It is a template that should be used to initialize any new mkdocs-based 
repositories we create.  (This note should then be removed from that repo and the follow text altered to match.)

## Setting up the repo
1. Get this repo:
    * `git clone git@gitlab.com:zscaler-zdemo/branch-and-cloud-connector-deployment-lab-guide.git`
    * `cd branch-and-cloud-connector-deployment-lab-guide`

## Run Docker container
1. Run site:
    * Run script `./run_docker_container.sh`.
      (http://localhost:8000)
    * Use `docker stop <name of container>` or `docker-compose down` to kill Docker container when done.

## Develop website
1.  Put your MarkDown files in the **./mkdocs/docs** directory.
1.  Put your images in the **./mkdocs/docs/img** directory.
1.  Update the **./mkdocs/mkdocs.yml** file's **nav:** section to suit your site.

## Common git commands:
* `git status`:  Simple report explaining the state of this repository.
* `git add <blah>`:  Adds new/modified/deleted files to the git repository.
* `git commit -m "<message>"`:  Commit added files.
* `git push`: Push committed files up to gitlab.
