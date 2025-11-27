#!/bin/bash
# setup.sh - Script to set up Azure resources and configurations
# https://github.com/outa2020/AzurePortal.git

# Set environment
ENVIRONMENT="dev" # Change to "prod" for production setup

# Create random string for unique workspace names
suffix=$(date +%Y%m%d)  # Simple date-based suffix

# Set the necessary variables
RESOURCE_GROUP="rg-HHN-${ENVIRONMENT}"
RESOURCE_PROVIDER="Microsoft.MachineLearningServices"
LOCATION="canadacentral"  # Canada Central region for New Brunswick
WORKSPACE_NAME="mlw-HHN-${ENVIRONMENT}-${suffix}"
COMPUTE_INSTANCE="ci${ENVIRONMENT}${suffix}"
COMPUTE_CLUSTER="aml-cluster-${ENVIRONMENT}"

# Register the Azure Machine Learning resource provider in the subscription
echo "Register the Machine Learning resource provider:"
az provider register --namespace $RESOURCE_PROVIDER

# Create the resource group and workspace and set to default
echo "Creating PRODUCTION environment..."
echo "Create a resource group and set as default:"
az group create --name $RESOURCE_GROUP --location $LOCATION
az configure --defaults group=$RESOURCE_GROUP

echo "Create an Azure Machine Learning workspace:"
az ml workspace create --name $WORKSPACE_NAME 
az configure --defaults workspace=$WORKSPACE_NAME 

# Create compute instance (can skip for prod if not needed)
echo "Creating a compute instance with name: " $COMPUTE_INSTANCE
az ml compute create --name ${COMPUTE_INSTANCE} --size STANDARD_DS11_V2 --type ComputeInstance 

# Create compute cluster (larger for prod workloads)
echo "Creating a compute cluster with name: " $COMPUTE_CLUSTER
az ml compute create --name ${COMPUTE_CLUSTER} --size STANDARD_DS11_V2 --max-instances 5 --type AmlCompute

echo "✅ Production environment setup complete!"
echo "Resource Group: $RESOURCE_GROUP"
echo "Workspace: $WORKSPACE_NAME"
echo "Location: $LOCATION"