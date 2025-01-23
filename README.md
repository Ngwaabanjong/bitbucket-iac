# bitbucket-iac
Create EC2 Using Terraform (IAC) Bitbucket CICD 

## 1 - Create Bitbucket


## 2 - Create Pipeline Script
- Create a bitbucket repository
- Click on deployments
- On **bitbucket-pipelines.yml** paste the below code.
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

## 3 - 
