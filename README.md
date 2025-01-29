# bitbucket-iac
Create EC2 Using Terraform (IAC) Bitbucket CICD 

## 1 - Create Bitbucket

## 2 - Create an IAM user with the following policies below:
- AmazonEC2FullAccess & AmazonS3FullAccess
- Create Access keys from the user

## 3. Add Access keys on bitbucket repository
- On Bitbucket repository -> repository settings -> repository variables at keys as below
- Name: AWS_ACCESS_KEY_ID Value: {{insert key ID}}
- Name: AWS_SECRET_ACCESS_KEY Value: {{insert secret key}}

## 4 - Create Pipeline Script
- Add below code on bitbucket repository with Terraform code.
- Create a file name **bitbucket-pipelines.yml** paste the below code.
```
image: hashicorp/terraform

pipelines:
  branches:
    main:
      - step:
          name: Deploy to Production
          deployment: Production
          script:
            - terraform init
            - terraform plan
            - terraform apply -auto-approve
```

## 3 - Enable pipeline
- On the repository -> settings -> pipelines.
- On the settings enable pipelines settings.
- If it's already enabled your pipeline will run ones code is push/commit.

## Delete resources
```
image: hashicorp/terraform

pipelines:
  custom:
    destroy:
      - step:
          name: Destroy Resources
          script:
            - terraform init
            - terraform destroy -auto-approve
```
