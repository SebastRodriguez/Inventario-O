$AA = Get-AzureRmAutomationAccount -ResourceGroupName "Canales-NOVT" | Select-object AutomationAccountName 

foreach($BB in $AA)
{
	$CC = $BB -match '=(?<AutomationAccountName>.+)}'     
	Write-OutPut $Matches.AutomationAccountName

	Get-AzureRmAutomationRunBook -AutomationAccountName $Matches.AutomationAccountName -ResourceGroupName "Canales-NOVT" | Select-object ResourceGroupName, AutomationAccountName |Export-Csv -Path ~/Inventario-AutomationAccounts/RunBooks.csv -Encoding ascii -NoTypeInformation
	break
}
