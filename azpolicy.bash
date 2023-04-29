# Run a job and tasks with Azure Batch

# Create a resource group.
echo "Creating Az Policy"
az policy definition create --name 'auditt-storage-accounts-open-to-public-networks' --display-name 'Auditt Storage Accounts Open to Public Networks' --description 'Tthis policy ensures that storage accounts with exposures to public networks are audited.' --rules '/home/azureuser/testpolicyassignment.json' --mode All

az policy assignment create --name 'auditt-storage-accounts-open-to-public-networks-assignment' --scope '/subscriptions/37ed9c9a-0d39-4823-a06c-e8121b935f89/resourceGroups/Testresourcegroup1' --policy '/subscriptions/37ed9c9a-0d39-4823-a06c-e8121b935f89/providers/Microsoft.Authorization/policyDefinitions/auditt-storage-accounts-open-to-public-networks'

