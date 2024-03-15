# Formula 1 Data Pipeline with Unity Catalog

## Project Description:

This project establishes a data pipeline for Formula 1 race data using Databricks and Unity Catalog. It:

- Creates external locations in Azure Blob Storage for Bronze, Silver, and Gold tiers of data.
- Defines schemas within a Unity Catalog for organizing the data.
- Creates tables in the Bronze tier for raw JSON data (drivers and results).
- Creates managed tables in the Silver tier, processing driver names and adding an ingestion timestamp.
- Creates a managed table in the Gold tier, joining drivers and results data to calculate the number of wins per driver.

## Features:

- Leverages Databricks for data processing and table creation.
- Utilizes Unity Catalog for managing data schemas and locations.
- Provides a basic structure for a Formula 1 data pipeline.

## Code Structure:

The code consists of four Databricks notebooks:
1. Create External Locations: Defines storage locations for Bronze, Silver, and Gold data in Azure Blob Storage.
2. Create Bronze Tables: Creates tables for raw driver and result data in JSON format within the Bronze schema.
3. Create Silver Tables: Creates managed tables in the Silver schema, processing driver names and adding an ingestion timestamp.
4. Create Gold Table: Creates a managed table in the Gold schema, joining drivers and results data to calculate the number of wins per driver.

## Prerequisites:

- An Azure Databricks workspace with access to Azure Blob Storage.
- A Unity Catalog configured within your Databricks workspace.
- The formula1_uc_ext_storage_credential secret containing the storage account credentials for accessing Azure Blob Storage.

## Setup:

- Ensure you have the necessary prerequisites mentioned above.
- Replace placeholders like formula1ucdlext.dfs.core.windows.net with your specific storage account details.
- Update the paths to your driver and result JSON files within the Bronze table creation notebook.

## Running the Project:

- Open each Databricks notebook in sequence and execute the cells.
- The notebooks will create the external locations, schemas, and tables as defined in the code.

## Code Examples:

- External Location Creation: Demonstrates creating external locations for Bronze, Silver, and Gold data in Azure Blob Storage.
- Bronze Table Creation: Showcases creating tables for raw driver and result data in JSON format.
- Silver Table Creation: Illustrates processing driver names, adding ingestion timestamps, and creating managed tables.
- Gold Table Creation: Exemplifies joining Silver tables and calculating the number of wins per driver.

### References:

- Databricks Documentation: https://docs.databricks.com/en/index.html
- Unity Catalog Documentation: https://docs.unity3d.com/Packages/com.unity.addressables@1.20/manual/LoadContentCatalogAsync.html
