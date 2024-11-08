CREATE OR REPLACE NOTEBOOK IDENTIFIER('"DEMO_DB"."DATA"."{{env}}_STATS_CUSTOMER"')
    FROM '@"DEMO_DB"."INTEGRATIONS"."DEMO_GIT_REPO"/branches/main/notebooks/02_stats_customer/'
    QUERY_WAREHOUSE = 'DEMO_WH'
    MAIN_FILE = '02_stats_customer.ipynb';

ALTER NOTEBOOK "DEMO_DB"."DATA"."{{env}}_STATS_CUSTOMER" ADD LIVE VERSION FROM LAST;

CREATE OR REPLACE NOTEBOOK IDENTIFIER('"DEMO_DB"."DATA"."{{env}}_STATS_SALES"')
    FROM '@"DEMO_DB"."INTEGRATIONS"."DEMO_GIT_REPO"/branches/main/notebooks/03_stats_sales/'
    QUERY_WAREHOUSE = 'DEMO_WH'
    MAIN_FILE = '03_stats_sales.ipynb';

ALTER NOTEBOOK "DEMO_DB"."DATA"."{{env}}_STATS_SALES" ADD LIVE VERSION FROM LAST;

