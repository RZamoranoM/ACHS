# Get the private key from the environment variable
echo "Setting up DevHub Connection..."
echo "Authenticating org"
echo "Conectar Prod"
sfdx auth:jwt:grant --clientid $SFDC_QA_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_QA_USER --instanceurl https://test.salesforce.com
