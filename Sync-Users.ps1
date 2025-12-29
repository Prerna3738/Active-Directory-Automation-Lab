# Setup: Path to the employee list
$csvPath = "./employees.csv"
$domain = "ITECLab.local"

# Import Active Directory Module (Assumes RSAT is installed)
Import-Module ActiveDirectory

# Read the CSV data
$users = Import-Csv -Path $csvPath

foreach ($user in $users) {
    # Generate a standard username: (FirstInitial + LastName) -> jdoe
    $samAccountName = ($user.firstname.substring(0,1) + $user.lastname).ToLower()
    $upn = $samAccountName + "@" + $domain
    
    # Check if user already exists to avoid errors
    if (Get-ADUser -Filter "SamAccountName -eq '$samAccountName'") {
        Write-Host "User $samAccountName already exists. Skipping..." -ForegroundColor Yellow
    } else {
        # Create the user with professional attributes
        New-ADUser -Name "$($user.firstname) $($user.lastname)" `
                   -SamAccountName $samAccountName `
                   -UserPrincipalName $upn `
                   -GivenName $user.firstname `
                   -Surname $user.lastname `
                   -Department $user.department `
                   -Title $user.jobtitle `
                   -Office $user.office `
                   -Enabled $true `
                   -AccountPassword (ConvertTo-SecureString "YorkU2025!" -AsPlainText -Force) `
                   -ChangePasswordAtLogon $true
        
        Write-Host "Successfully onboarded: $samAccountName" -ForegroundColor Green
    }
}
