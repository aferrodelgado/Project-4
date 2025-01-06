CREATE TABLE visualization_transaction_df (
	trxn_amt DECIMAL(10, 2),
	pmt_method VARCHAR(50),
	product_cat VARCHAR(50),
	qty INTEGER,
	cust_age INTEGER,
	cust_loc VARCHAR(100),
	cust_device VARCHAR(50),
	fraudulent INTEGER,
	acct_age_days INTEGER,
	trxn_hour INTEGER,
	year INTEGER,
	month INTEGER,
	day INTEGER
);


CREATE TABLE modeling_df (
	trxn_amt NUMERIC(20, 15),
	qty INTEGER,
	cust_age INTEGER,
	fraudulent INTEGER,
	acct_age_days NUMERIC(20, 15),
	trxn_hour INTEGER,
	year INTEGER,
	month INTEGER,
	day INTEGER,
	pmt_method_PayPal VARCHAR(10),
	pmt_method_bank_transfer VARCHAR(10),
	pmt_method_credit_card VARCHAR(10),
	pmt_method_debit_card VARCHAR(10),
	product_cat_clothing VARCHAR(10),
	product_cat_electronics VARCHAR(10),
	product_cat_health_beauty VARCHAR(10),
	product_cat_home_garden VARCHAR(10),
	product_cat_toys_games VARCHAR(10),
	cust_device_desktop VARCHAR(10),
	cust_device_mobile VARCHAR(10),
	cust_device_tablet VARCHAR(10)
);

