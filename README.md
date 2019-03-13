# Senior Data Engineer Position at Sephora SEA

You can write your code in the language of your choice. But we have preferences for the languages of our stack:

- Go (Highly recommended)
- Python
- NodeJS

Please organise your code, document it and write relevant unit tests.
Do provide instructions for any specific setup required to run your code. 

## Context

At Sephora SEA, we are building business schemas on top of the e-commerce source databases.
For instance, we have a __products__ table which is a consolidation of 30 other tables.
It contains information for each of our products (ids, descriptions, categories...).

Our tables are organised in datasets (folders), _eg._ `final`, `raw`, `tmp`.

The __products__ table is created from a chain of dependent SQL scripts. The process is as follows:

1. Dump the e-commerce databases into a raw dataset (`res/raw` folder)
2. Clean and consolidate the data on top of these raw tables using SQL scripts stored in the `res/tmp` folder. For instance, the result of the `res/tmp/inventory_items.sql` script will be stored in the `tmp.inventory_items` table.
3. Create the `final.products` table (from the `res/final/products.sql` script)

This assignment is roughly about recreating this implementation.
We will first focus on the logic to implement and run the dependency tree, followed by a deployment and running it against a real data warehouse instance.

## Your tasks

### A - Dependencies Orchestration

Your task is to build parts of the tool that will orchestrate the aforementioned process, in order to create the `final.products` table:

1. Write a function that shows the dependencies between all the sql scripts (from scratch, no specialized library!) _eg._ showing that `tmp.item_purchase_prices` depends on `raw.purchase_line_items` and `raw.purchase_items`.

2. Write a function, using the previous question, that would run the SQL scripts in the correct order. Please provide documentation as of how you are proceeding.

*Going further, we would like to parallelize the execution of few of these scripts. If you think of the dependencies as a tree: scripts from different nodes can work simultaneously, but, still, must not be executed before its children's tasks are done.*

3. Write a function that parallelize the execution of the SQL scripts, ensuring they respect their dependencies. Please provide documentation as of how you are proceeding.



### B - Deployment

In this section, we will work on deploying an implementation of the previous question. 

1. Setting up a BigQuery instance. 
The data warehouse platform that we are using in Sephora is Google Bigquery.
Google allows you to try BigQuery for free with a Google account (that you have by default with a gmail address for example)
- Go to https://bigquery.cloud.google.com/welcome, login and create a project.
- You will be redirected to console.developers.google.com where you can give a name to your project. 
- Once the project is created, and if not done by default, activate BigQuery API there: https://console.developers.google.com/apis/api/bigquery-json.googleapis.com/ (you might have to select your project in the header)
- Once done, you now have access to bigquery ! https://bigquery.cloud.google.com/
- Let's create our datasets. In the left column of the UI, find the `No datasets found in this project` text. There, you will be able to create 3 datasets `raw`, `tmp` and `final`.
- Click `Compose Query` 
- Click `Show Options`, uncheck `Use Legacy SQL`, and click `Hide Options`
- Run the queries in the `db_init` folder to populate the `raw` dataset

The instance is now ready !

2. Update your previous code to run on BigQuery. Instead of having a fake function simulating the execution of the query in section A, implement it to run on BigQuery.
Upon execution, the `tmp` and `final` datasets should be populated based on the `raw` data. Google BigQuery has a [documented API](https://cloud.google.com/bigquery/docs/reference/rest/v2/) as well as a bunch of SDKs available. 

3. Deploy an API on the platform of your choice. The API should obey the following specifications: 

- `GET /run`  : Runs the code implemented in B-2. When this endpoint is called, the `tmp` and `final` tables should be recreated.
- `GET /add?table_name=products&name=banana%20lipstick&category_id=4&external_id=123&type=product` : Append a new row in the defined `table_name` in the `raw` dataset. For this point, we can assume that the consumer of the API will always input a valid query (existing table name, exisitng field names and valid input).
- The endpoints can be public. 
- The endpoints should return an appropriate status code.


## Notes


- The files in the `res/raw` folder represents the available raw data tables in the `raw` dataset.


- For point A-1, parsing the query will be necessary. We can assume the shape of the tables in the scripts will always be `dataset_name.table_name`


- For points A-2 and A-3, you can use a dummy function such as the following as a placeholder for the function actually running the sql scripts (here in golang):

```go
func() {
 // This is execution time of the tmp.inventory_items script
 time.Sleep(time.Second * 3)
}
```
 


## Expected outputs
- Source code of the exercise (Sections A and B).
- Documentation of how you are proceeding and how to deploy and run locally (Sections A and B-2)
- Credentials to access the datasets of your BQ instance for the data@luxola.com user (can be setup here https://console.cloud.google.com/iam-admin/iam. The BigQuery Data Viewer permission is enough)
- URL endpoint of your API



Good luck :)