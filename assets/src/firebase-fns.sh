# Create a new project and enter it
mkdir devfest-kc-example && cd devfest-kc-example

# Set up your tools
npm install firebase-functions@latest firebase-admin@latest --save
npm install -g firebase-tools
firebase login
firebase init functions