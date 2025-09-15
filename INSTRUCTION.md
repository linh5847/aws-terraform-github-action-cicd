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

DEV_AWS_ACCESS_KEY_ID
DEV_AWS_SECRET_ACCESS_KEY
DEV_AWS_DEFAULT_REGION