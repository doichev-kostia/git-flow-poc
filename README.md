# Git Flow

The idea is to have one long-lived branch "master".
On push to that branch, the code is deployed to the staging environment.

The production should be deployed on release publish.

## Standard flow

The developer creates a short-lived branch from master, 
then creates a pull request to master. This code is deployed to staging.
When the code is ready to be deployed to production, the developer creates a release branch from master.

After that another developer merges some other changes to master.

## Ooops, we need a hotfix

Imagine that we have a bug in production. We need to fix it asap.
Meanwhile, the new feature is just being merged to master and not tested properly yet.

The developer should create a branch with a hotfix from the latest release tag.
After that, in case the hotfix ready and the new feature is still not tested,
the engineer should publish a release on a hotfix branch.

After that, the commit with the hotfix should be merged to master.


