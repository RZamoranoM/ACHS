# Get the private key from the environment variable
echo "Setting up DevHub Connection..."
echo "Authenticating org"

echo "Conectar Desa"
sfdx alias:set my-hub-orgDESA=consultor_force@ei.cl.sbxei
sfdx auth:jwt:grant --clientid $SFDC_DESA_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_DESA_USER --instanceurl https://test.salesforce.com

echo "Conectar QA"
sfdx alias:set my-hub-orgQA=consultor_force@nectia.com.qa
sfdx auth:jwt:grant --clientid $SFDC_QA_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_QA_USER --instanceurl https://test.salesforce.com
