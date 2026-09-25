STEP-1: CLONE THE CODE
git clone https://github.com/RAHAMSHAIK007/AZURE-PRO.git

STEP-2: INSTALL AZURE AZURE CLI
winget install -e --id Microsoft.AzureCLI

az login --use-device-code


STEP-3: RUN COMMANDS
terraform init
terraform validate
terraform plan -out eks
terraform apply