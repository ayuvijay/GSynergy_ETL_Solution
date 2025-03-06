-- Create staging table for transactions
CREATE TABLE staging_transactions (
    order_id BIGINT,
    line_id INT,
    type VARCHAR(50),
    dt DATETIME,
    pos_site_id VARCHAR(50),
    sku_id BIGINT,
    fscldt_id INT,
    price_substate_id VARCHAR(50),
    sales_units INT,
    sales_dollars DECIMAL(10,2),
    discount_dollars DECIMAL(10,2),
    original_order_id BIGINT NULL,
    original_line_id INT NULL
);

-- Load raw data into staging
INSERT INTO staging_transactions 
SELECT * FROM raw_transactions; -- Assuming raw data is in a temp table

-- Create Product Dimension
CREATE TABLE dim_product AS
SELECT DISTINCT sku_id, sku_label, stylclr_id, stylclr_label, styl_id, styl_label, 
                subcat_id, subcat_label, cat_id, cat_label, dept_id, dept_label
FROM staging_transactions;

-- Create POS Site Dimension
CREATE TABLE dim_possite AS
SELECT DISTINCT pos_site_id FROM staging_transactions;

-- Create Calendar Dimension
CREATE TABLE dim_calendar AS
SELECT DISTINCT fscldt_id, dt FROM staging_transactions;
