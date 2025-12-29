# Group Policy Object (GPO) Design

To secure the newly created users, the following GPOs were designed for the environment:

### 1. Workstation Lockdown
- **Path:** User Configuration > Administrative Templates > Control Panel
- **Setting:** Prohibit access to Control Panel and PC settings
- **Target:** All non-IT Department OUs

### 2. Password Complexity
- **Path:** Computer Configuration > Windows Settings > Security Settings > Account Policies
- **Setting:** Minimum password length: 12 characters; Must meet complexity requirements.
