-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### create external locations required for the project
-- MAGIC 1. Bronze
-- MAGIC 2. Silver
-- MAGIC 3. Gold

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS `formula1_uc_ext_location_bronze`
URL 'abfss://bronze@formula1ucdlext.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `formula1_uc_ext_storage_credential`)
COMMENT 'Storage location for bronze container';

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS `formula1_uc_ext_location_silver`
URL 'abfss://silver@formula1ucdlext.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `formula1_uc_ext_storage_credential`)
COMMENT 'Storage location for silver container';

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS `formula1_uc_ext_location_gold`
URL 'abfss://gold@formula1ucdlext.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `formula1_uc_ext_storage_credential`)
COMMENT 'Storage location for gold container';

-- COMMAND ----------

CREATE CATALOG IF NOT EXISTS formula1_dev;

-- COMMAND ----------

USE CATALOG formula1_dev;

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS bronze
MANAGED LOCATION "abfss://bronze@formula1ucdlext.dfs.core.windows.net/"

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS silver
MANAGED LOCATION "abfss://silver@formula1ucdlext.dfs.core.windows.net/"

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS gold
MANAGED LOCATION "abfss://gold@formula1ucdlext.dfs.core.windows.net/"
