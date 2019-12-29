# Lists out all Resource Providers in a given region
Get-AzResourceProvider -Location eastus -ListAvailable | ft ProviderNamespace

# Lists out all resource type names
(Get-AzResourceProvider -ProviderNamespace Microsoft.Compute).ResourceTypes | ft ResourceTypeName

# Obtains all relevant APIs that can be used for a resource during deployment
((Get-AzResourceProvider -ProviderNamespace Microsoft.Compute).ResourceTypes | Where-Object ResourceTypeName -eq virtualmachines).ApiVersions