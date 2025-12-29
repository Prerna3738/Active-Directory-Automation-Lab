# Enterprise IT: Active Directory Automation Lab

## 📌 Project Overview
As a 3rd Year IT student at York University, I developed this lab to demonstrate how to bridge the gap between HR data and IT infrastructure. This project automates the onboarding of employees into a Windows Domain environment using PowerShell.

## 🛠️ Skills Demonstrated
* **Scripting:** PowerShell Automation.
* **Systems Administration:** Active Directory Domain Services (AD DS).
* **Identity Management:** User Principal Name (UPN) standardization and attribute mapping.
* **Security:** GPO Design and Principle of Least Privilege.

## 📂 Project Structure
* `Sync-Users.ps1`: The core logic that parses employee data and creates secure AD accounts.
* `employees.csv`: Mock HR data used for the ingestion process.
* `GPO-Documentation.md`: Architectural plan for securing the domain.

## 🚀 How it Works
The script iterates through a CSV, generates standardized usernames, assigns them to their respective departments, and forces a password change at first logon to ensure security compliance.
