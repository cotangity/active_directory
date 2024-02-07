To use this powershell script function, run 

    notepad $PROFILE

Mimic this:

    function "Function Name" {
        $employeeID = Read-Host "Enter employee ID"
        $filter = "employeeID -eq '$employeeID'"
        Get-ADUser  -Filter $filter -Properties EmployeeID, LockedOut, PasswordExpired, PasswordLastSet -Server  "DomainController"
        }

You can copy this code and give a second function name with a different domain controller if you need to work with several.

This would look like:

    function "Function Name1" {
        $employeeID = Read-Host "Enter employee ID"
        $filter = "employeeID -eq '$employeeID'"
        Get-ADUser  -Filter $filter -Properties EmployeeID, LockedOut, PasswordExpired, PasswordLastSet -Server  "DomainController1"
        }

    function "Function Name2" {
        $employeeID = Read-Host "Enter employee ID"
        $filter = "employeeID -eq '$employeeID'"
        Get-ADUser  -Filter $filter -Properties EmployeeID, LockedOut, PasswordExpired, PasswordLastSet -Server  "DomainController2"
        }

Save the file, and open a new instance of your terminal emulator. This function will now persist after closing the terminal emulator and restarting your computer.
