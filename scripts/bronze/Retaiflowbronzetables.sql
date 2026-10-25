CREATE DATABASE Retailflow;
USE Retailflow;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
CREATE TABLE bronze.order_payments(
	order_id NVARCHAR(50),
	payment_sequential INT,
	payment_type NVARCHAR(50),
	payment_installments INT,
	payment_value DECIMAL(10,2)
);
DROP TABLE IF EXISTS bronze.order_reviews;
CREATE TABLE bronze.order_reviews(
	review_id NVARCHAR(100),
	order_id NVARCHAR(100),
	review_score INT,
	review_comment_tilte NVARCHAR(MAX),
	review_comment_message NVARCHAR(MAX),
	review_creation_date NVARCHAR(100),
	review_answer_timestamp NVARCHAR(100)
);
CREATE TABLE bronze.orders(
	order_id NVARCHAR(50),
	customer_id NVARCHAR(50),
	order_status NVARCHAR(50),
	order_purchase_timestamp DATETIME,
	order_approved_at DATETIME,
	order_delivered_carrier_date DATETIME,
	order_delivered_customer_date DATETIME,
	order_estimated_delivery_date DATETIME
);
CREATE TABLE bronze.products(
	product_id NVARCHAR(50),
	product_category_name NVARCHAR(50),
	product_name_length INT,
	product_description_length INT,
	product_photos_qty INT,
	product_weight_g INT,
	product_length_cm INT,
	product_height_cm INT,
	product_width_cm INT
);
	CREATE TABLE bronze.sellers(
	seller_id NVARCHAR(50),
	seller_zip_code_prefix INT,
	seller_city NVARCHAR(50),
	seller_state NVARCHAR(50)
);
CREATE TABLE bronze.product_category_name(
	product_category_name NVARCHAR(50),
	product_category_name_english NVARCHAR(50)
);
CREATE TABLE bronze.geolocation(
	geolocation_zip_code_prefix INT,
	geolocation_lat NVARCHAR(250),
	geolocation_lng  NVARCHAR(250),
	geolocation_city NVARCHAR(50),
	geolocation_state NVARCHAR(50)
);
CREATE TABLE bronze.customers(
	customer_id NVARCHAR(50),
	customer_unique_id NVARCHAR(50),
	customer_zip_code_prefix INT,
	customer_city NVARCHAR(50),
	customer_state NVARCHAR(50)
);
CREATE TABLE bronze.order_items(
	order_id NVARCHAR(50),
	order_item_id INT,
	product_id NVARCHAR(50),
	seller_id NVARCHAR(50),
	shipping_limit_date DATETIME,
	price DECIMAL(10,2),
	freight_value DECIMAL(10,2)
);

