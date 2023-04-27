# Variable employeeID reads what you type (looking for an employeeID)
$employeeID = Read-Host "Enter employee ID"
# Filter variable matches an employeeID number based on the employeeID variable
$filter = "employeeID -eq '$employeeID'"
# Command runs Get-ADUser then filters based on the filter variable, and displaying useful information under properties. Included a Server parameter to set your Domain Controller. If you have multiple DC's you can set them and create several functions with differnt names to identify them based on your needs.
Get-ADUser  -Filter $filter -Properties EmployeeID, LockedOut, PasswordExpired, PasswordLastSet -Server  "DomainController"