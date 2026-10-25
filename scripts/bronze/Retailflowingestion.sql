--loading bronze.customers
TRUNCATE TABLE bronze.customers;
GO
BULK INSERT bronze.customers
FROM 'C:\Users\Administrator\Downloads\olint\olist_customers_dataset.csv'
WITH(
FIRSTROW =2,
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
TABLOCK
);
GO
--loading bronze.geolocation
TRUNCATE TABLE bronze.geolocation;
GO
BULK INSERT bronze.geolocation
FROM 'C:\Users\Administrator\Downloads\olint\olist_geolocation_dataset.csv'
WITH(
FIRSTROW =2,
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
CODEPAGE = '65001',
TABLOCK
);
GO
--loading bronze.order_items --
TRUNCATE TABLE bronze.order_items;
GO
BULK INSERT bronze.order_items
FROM 'C:\Users\Administrator\Downloads\olint\olist_order_items_dataset.csv'
WITH(
FIRSTROW =2,
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
TABLOCK
);
--loading bronze.order_payments
TRUNCATE TABLE bronze.order_payments ;
GO
BULK INSERT bronze.order_payments
FROM 'C:\Users\Administrator\Downloads\olint\olist_order_payments_dataset.csv'
WITH(
FIRSTROW =2,
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
TABLOCK
);
--not yet complete due to language errors
--we used the cmd command to bypass
TRUNCATE TABLE bronze.order_reviews;
GO
BULK INSERT bronze.order_reviews
FROM 'C:\Users\Administrator\Downloads\olint\olist_order_reviews_dataset.csv'
WITH(
FIRSTROW =2,
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
CODEPAGE = '65001',
FIELDQUOTE ='"',
TABLOCK
);
--loading bronze.sellers 
TRUNCATE TABLE bronze.sellers;
GO
BULK INSERT bronze.sellers
FROM 'C:\Users\Administrator\Downloads\olint\olist_sellers_dataset.csv'
WITH(
FIRSTROW =2,
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
TABLOCK
);
---loading bronze.product_category_name

TRUNCATE TABLE bronze.product_category_name;
GO
BULK INSERT bronze.product_category_name
FROM 'C:\Users\Administrator\Downloads\olint\product_category_name_translation.csv'
WITH(
FIRSTROW =2,
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
TABLOCK
);
--loading bronze.orders
TRUNCATE TABLE bronze.orders;
GO
BULK INSERT bronze.orders
FROM 'C:\Users\Administrator\Downloads\olint\olist_orders_dataset.csv'
WITH(
FIRSTROW =2,
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
TABLOCK
);
--loading bronze.products 
TRUNCATE TABLE bronze.products;
GO
BULK INSERT bronze.products
FROM 'C:\Users\Administrator\Downloads\olint\olist_products_dataset.csv'
WITH(
FIRSTROW =2,
FIELDTERMINATOR =',',
ROWTERMINATOR ='\n',
TABLOCK
);
