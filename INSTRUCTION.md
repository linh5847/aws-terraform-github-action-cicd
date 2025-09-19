## 1. AWS access and secret key

Requires registration account and permission to perform this and in my case, I used London region as it is close to me.

https://eu-west-2.console.aws.amazon.com/console/home?region=eu-west-2

search for IAM->user->username->security credentials->create access key

This is not only method and users can choose what is more familiar to particular user.

## 2. GitHub

Anyone can register a free account for development and testing. It is important to create a public repository that's suit for this purpose, as since it is a free account. Users who are more lucky to work with GitHub Enterprise and can created a private repository with all options for CI/CD.

I'm using the public Runner for this exercise and anyone who's interested in GitHub Enterprise Runner should consult the official document for it, as it is out of scope.

#### 2.1 Create GitHub Secret
https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/use-secrets#creating-encrypted-secrets-for-a-repository

<img title="GitHub Secret" alt="Alt text" src="/images/github-secret.png">

Once, you have created a GitHub repository. Select it and click on setting. Follows the above screen to create the secret for each environment.

For example
```
DEV_AWS_ACCESS_KEY_ID
DEV_AWS_SECRET_ACCESS_KEY
DEV_AWS_DEFAULT_REGION
```

## CI/CD Operation

#### Git Feature Branch Push and GitHub Pull Request Created.
Follow the rules of thumb by creating a git feature branch. Add files, commit and push to the git server as a first step. Login to the GitHub console under your own account and click on **Action** to view the current feature branch CI/CD running.

<img title="Git Feature Branch" alt="Alt text" src="/images/git-feature-branch.png">
The above image shown 3 steps. 

Step1. As soon as you push the git feature branch to git server. The GitHub Action CI/CD pipeline will execute and running.

Step2. As soon as you create a **Pull Request**. The GitHub Action CI/CD will execute and run again.

Step3. As soon as you **Merge** a **Pull Request** to particular git branch ie **develop**. The GitHub Action CI/CD will call both Terraform Plan and Apply and deploy the infrastructure to AWS cloud.

#### GitHub Merge Pull Request To The Standard Git Branch
On the GitHub Action CI/CD screen. When you see the ie **Deploy_Dev/Plan_Dev** in a browse colour. You need to click on this button, as it is waiting for approval to be deployed. This option come from the GitHub Environment with review required option when creating an environment.

<img title="Git Merge" alt="Alt text" src="/images/git-merge-click.png">

The above image shows user to click on the deploy option for review with option which will lead to the next instruction

<img title="Review deployment" alt="Alt text" src="/images/review-pending-deployment.png">

As soon as you click on the **Review pending deployment**. It will lead you to select **Reject** or **Approve for deployment**. In theory, the code has been reviewed and approved, as well as merge into the particular environment git branch ready to deploy. You will likely click on **Approve for deployment** unless the circumstance has changed at the last second before the button being click when pairing with a buddy or someone higher ranking. The **Reject** button will be selected and the deployment will get cancelled.

<img title="Reject or Approve" alt="Alt text" src="/images/reject-or-approve.png">

We can login the AWS console and review before the deployment and in my case the intension of this deployment is to create an **AWS custom VPC** and **Internet-Gateway**.

<img title="before deployment" alt="Alt text" src="/images/before-deployment.png">

Once, the GitHub Action CI/CD **Approve for deployment** button is click. It starts executing the Terraform code and deploy into AWS cloud.

<img title="deployment progression" alt="Alt text" src="/images/deploy-progress.png">

When the CI/CD pipeline is completed with a deployment successfully. We can check both the AWS console to see a new deployment is applying correctly.

<img title="deploy successful" alt="Alt text" src="/images/deploy-successful.png">

AWS reviewing after the deployment.

<img title="after deployment" alt="Alt text" src="/images/after-deployment.png">

#### Others
All images below are considering as part of creating pull request and merge into the standard git branch. Users may wondering why it is below the deploy. This is purely for knowledge base only.

compare & pull request
<img title="Compare && Pull request" alt="Alt text" src="/images/git-compare-pull-request.png">

select standard git branch ie **develop** or **stage** or **main**
<img title="Select Standard Git Branch" alt="Alt text" src="/images/select-git-branch.png">

create a pull request
<img title="Create pull request" alt="Alt text" src="/images/create-pull-request.png">

ready to merge into particular git standard branch
<img title="Ready to merge" alt="Alt text" src="/images/ready-to-merge.png">

confirm merge to git branch
<img title="Confirm merge" alt="Alt text" src="/images/confirm-merge.png">

stage deployment
<img title="stage deployment" alt="Alt text" src="/images/stage-deployment.png">

CI/CD for stage environment
<img title="stage environment" alt="Alt text" src="/images/stage-environment.png">

AWS View
<img title="VPC" alt="Alt text" src="/images/VPC.png">

Custom VPC Name
<img title="VPC Name" alt="Alt text" src="/images/VPC-name.png">