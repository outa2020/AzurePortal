# Check if resource group exists
az group show --name rg-HHN-dev

# List all resources in the group
az resource list --resource-group rg-HHN-dev --output table

# Check ML workspace (here it is just a sample dated name, adjust as necessary)
az ml workspace show --name mlw-HHN-dev-20251103 --resource-group rg-HHN-dev