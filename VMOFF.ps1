  
$subscriptionName = Get-AutomationVariable -Name "SubscriptionName"
$cred = Get-AutomationPSCredential -Name "automationCred"

Login-AzureRmAccount -Credential $cred
Select-AzureRmSubscription -SubscriptionName $subscriptionName

Stop-AzureRmVM -ResourceGroupName "Canales-NOVT" -Name "ORI-DEV-APPSW" -Force
Stop-AzureRmVM -ResourceGroupName "Canales-NOVT" -Name "ORI-DEV-WEBSW" -Force
