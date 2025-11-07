# Delete the resource group (removes everything)
az group delete --name rg-HHN-dev --yes --no-wait

# to check deletion status
# az group show --name rg-HHN-dev


## other useful commands

# create a repo in githup
git init
git add .
git commit -m "initial commit"
git branch -M main
git remote add origin https://github.com/outa2020/AzurePortal.git   
git push -u origin main

# now once in Azure Portal, you can clone the repo

git clone https://github.com/outa2020/AzurePortal.git
cd AzurePortal

# to pull changes made in github to local repo
git pull origin main

# to push changes made in local repo to github
git add .
git commit -m "your commit message"
git push origin main

# to check current logged in user
az account show



