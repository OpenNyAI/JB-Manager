# Powershell
# Container App - API
az deployment group create --resource-group $env:RESOURCE_GROUP --template-file create_container_app_template.json --parameters containerAppName=api location=centralindia containerAppEnvironmentName=managedenv-testing containerTargetPort=8000 cpu="0.5" memory="1Gi" minReplicas=1 maxReplicas=2 environmentVariables='[{"name": "POSTGRES_DATABASE_NAME", "value": "your_db_name"},{"name": "POSTGRES_DATABASE_USERNAME", "value": "your_db_username"},{"name": "POSTGRES_DATABASE_PASSWORD", "value": "your_db_password"},{"name": "POSTGRES_DATABASE_HOST", "value": "your_db_host"},{"name": "POSTGRES_DATABASE_PORT", "value": "your_db_port"},{"name": "KAFKA_BROKER", "value": "your_kafka_broker"},{"name": "KAFKA_USE_SASL", "value": "your_kafka_use_sasl"},{"name": "KAFKA_PRODUCER_USERNAME", "value": "your_kafka_producer_username"},{"name": "KAFKA_PRODUCER_PASSWORD", "value": "your_kafka_producer_password"},{"name": "KAFKA_CHANNEL_TOPIC", "value": "your_kafka_channel_topic"},{"name": "KAFKA_FLOW_TOPIC", "value": "your_kafka_flow_topic"},{"name": "STORAGE_ACCOUNT_URL", "value": "your_storage_account_url"},{"name": "STORAGE_ACCOUNT_KEY", "value": "your_storage_account_key"},{"name": "STORAGE_AUDIOFILES_CONTAINER", "value": "your_storage_audiofiles_container"},{"name": "ENCRYPTION_KEY", "value": "your_encryption_key"},{"name": "WA_API_HOST", "value": "your_wa_api_host"}]'