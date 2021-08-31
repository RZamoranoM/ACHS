#Get the private key from the environment variable
echo "Logging into Salesforce Org"
echo "Authenticating org"

echo "Conectar ACHS paso a QA"
sfdx alias:set my-hub-orgDESA=consultor_force@ei.cl.sbxei
sfdx auth:jwt:grant --clientid $SFDC_DESA_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_DESA_USER --instanceurl https://test.salesforce.com
sfdx alias:set my-hub-orgQA=consultor_force@nectia.com.qa
sfdx auth:jwt:grant --clientid $SFDC_QA_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_QA_USER --instanceurl https://test.salesforce.com


#echo "Conectar ACHS paso a prod"
#sfdx alias:set my-hub-orgUAT2=consultor_force@nectia.com.qa
#sfdx auth:jwt:grant --clientid $SFDC_UAT_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_UAT_USER --instanceurl https://test.salesforce.com
#sfdx alias:set my-hub-Prod=
#sfdx auth:jwt:grant --clientid $SFDC_PROD_CLIENTID --jwtkeyfile JWT/server.key --username $SFDC_PROD_USER --instanceurl https://login.salesforce.com/
