# ScalacApp - Application and EKS cluster

1. To run this code You need prerequisites:

    -AWS account  
    -AWS IAM authenticator with pollicy AmazonEKSFullAccess  
    -Configure you local env to use the Access Key ID and Secret Access Key for AWS (AWS CLI can be also helpfull)  
    -Install localy terraform and configur  

2. clon the repositiry
3. in the location of the project:

    -terraform init  
    -terraform validate  
    -terraform plan  
    -terraform apply  

4. Terraform code in this project have a kubernetes.tf file which is a k8s deployment :
    -use container image: https://hub.docker.com/repository/docker/zxkuba/scalacapp, based on: https://github.com/zxkuba/scalacapp  
    -create a service "scalacapp-servive, runing on 8080 port  



