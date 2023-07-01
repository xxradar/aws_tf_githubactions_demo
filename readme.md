# Deploying AWS resources using TF and GitHub actions
Interested in getting this demo in your own environment? Follow these steps !

## Prerequisites
### 1. Github
Choose one of the following options [https://github.com](https://github.com)
- Use your own Github account
- Create a new Github account (a free account)

Once you have access to your Github account, create *Personal access tokens (classic)*
- Go to your Account -> Settings ->  Developer Settings
- Create a **Personal access tokens (classic)**
- Provide a **Note**, and check **repo** and **workflow** and save
- Copy the token and store for later use, it looks like **ghp_tpIU18........7lP19DtqZ**. Keep it secure, because it grants access to your Github account.

### 2. Infracost
We'll use Infracost as an example and API integration to demonstrate a CI/CD workflow
- Goto [https://www.infracost.io/](https://www.infracost.io/)
- Signin with your Github account
- Click on **Org settings**
- Copy the **API key** and store for later use, it looks like **ico-YxPF1..yht4U**. Keep it secure.

### 3. AWS 
Access the AWS console [https://aws.amazon.com/console/](https://aws.amazon.com/console/) and login with the provided credentials.<br>
(You can of course use you're own AWS access)
