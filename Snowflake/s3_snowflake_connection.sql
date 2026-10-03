 CREATE OR REPLACE STORAGE INTEGRATION PBI_Integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::589354718566:role/PowerBI_Project'
  STORAGE_ALLOWED_LOCATIONS = ('s3://powerbiproject44/')
  COMMENT = 'Optional Comment'

    
   desc integration PBI_Integration;
