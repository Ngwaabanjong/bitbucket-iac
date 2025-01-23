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

## 3 - Configure credentials
- On the repository -> settings -> pipelines
- On the settings enable pipelines settings
- On the same pipelines -> environment variables

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
