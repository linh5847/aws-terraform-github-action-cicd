The IaC GitHub Action CI/CD pipeline design for multiple branches and multiple environments. There is one Git default branch only when we first create the Git repository. Other branches are created as part of requirements to suit the need of blue-green application deployment purposes. However, there will come with some confusion along and care must considered during the operation.

#### Standard Branches
```
develop
stage
main
```

#### Create Feature Branches
Use your name initial and jira ticket number. For example **Full Name = John Wicked** and **Ticket = infra-255**, the format can be as followed.
```
git checkout main
git fetch --all
git pull --all
git checkout -b jw-infra-255

If the first deployment into say the DEVELOPMENT ENVIRONMENT. You need to copy the GitHub Action CI/CD YAML file from that environment to the files that drive the CI/CD as followed.

cp -pr dev-pull-request.yml pull-request.yml
cp -pr dev-merge-deploy.yml merge-deploy.yml

This will ensure the code will get deploy to the DEVELOPMENT ENVIRONMENT only.
```

WHen the file has been added and submit to the local git feature branch and it is ready to first push the git feature branch to the git server remotely. Makes a reasonable comment during the git commit and push to git server ready for requesting for a reviewed.

The GitHub Action CI/CD design with 2 main files **pull-request.yml** and **merge-deploy.yml**. These two files are copying from ie **dev-pull-request.yml** and **dev-merge-deploy.yml** and we want to keep this format without editing anything related to the GitHub Action YAML files until further noticed. This is to compliance with multi branches situation.

