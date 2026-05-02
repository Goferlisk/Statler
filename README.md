Install Pi OS Lite using pi imager

Create new keys and password using Bitwarden - create ssh button

sudo apt update && sudo apt upgrade in SSH

install docker - https://docs.docker.com/engine/install/debian/

install dockhand - https://dockhand.pro/manual/

1. Create GitHub Credentials

    Generate a Personal Access Token (PAT): Go to your GitHub Settings > Developer settings > Personal access tokens. Generate a new token with read-only access to repositories.
    Add to Dockhand: In the Dockhand interface, navigate to Settings > Git > Credentials.
    Enter Details: Input your GitHub username and the generated PAT as the password. 

2. Connect Your Repository

    Add Repository: Go to Settings > Git > Repositories in Dockhand.
    Provide URL: Enter the HTTPS URL of the GitHub repository containing your docker-compose.yml files.
    Test Connection: Use the "Test" button to ensure Dockhand can successfully authenticate and reach the repository. 

3. Deploy Stacks from GitHub

    Create Stack: Navigate to the Stacks section and choose to create a new stack from a Git repository.
    Configure Sync: You can enable auto-sync or set up webhooks so that Dockhand automatically redeploys your containers when you push changes to GitHub. 


Install tailscale - https://login.tailscale.com/admin/machines
