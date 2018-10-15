CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.date_dim (
  `d_date_sk` int,
  `d_date_id` string,
  `d_date` date,
  `d_month_seq` int,
  `d_week_seq` int,
  `d_quarter_seq` int,
  `d_year` int,
  `d_dow` int,
  `d_moy` int,
  `d_dom` int,
  `d_qoy` int,
  `d_fy_year` int,
  `d_fy_quarter_seq` int,
  `d_fy_week_seq` int,
  `d_day_name` string,
  `d_quarter_name` string,
  `d_holiday` string,
  `d_weekend` string,
  `d_following_holiday` string,
  `d_first_dom` int,
  `d_last_dom` int,
  `d_same_day_ly` int,
  `d_same_day_lq` int,
  `d_current_day` string,
  `d_current_week` string,
  `d_current_month` string,
  `d_current_quarter` string,
  `d_current_year` string 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/date_dim/'
TBLPROPERTIES ('has_encrypted_data'='false');


_______________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.household_demographics (
  `hd_demo_sk` int,
  `hd_income_band_sk` int,
  `hd_buy_potential` string,
  `hd_dep_count` int,
  `hd_vehicle_count` int 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/household_demographics/'
TBLPROPERTIES ('has_encrypted_data'='false');

______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.income_band (
  `ib_income_band_sk` int,
  `ib_lower_bound` int,
  `ib_upper_bound` int 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/income_band/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.inventory (
  `inv_date_sk` int,
  `inv_item_sk` int,
  `inv_warehouse_sk` int,
  `inv_quantity_on_hand` bigint 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/inventory/'
TBLPROPERTIES ('has_encrypted_data'='false');

______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.item (
  `i_item_sk` int,
  `i_item_id` string,
  `i_rec_start_date` date,
  `i_rec_end_date` date,
  `i_item_desc` string,
  `i_current_price` decimal,
  `i_wholesale_cost` decimal,
  `i_brand_id` int,
  `i_brand` string,
  `i_class_id` int,
  `i_class` string,
  `i_category_id` int,
  `i_category` string,
  `i_manufact_id` int,
  `i_manufact` string,
  `i_size` string,
  `i_formulation` string,
  `i_color` string,
  `i_units` string,
  `i_container` string,
  `i_manager_id` int,
  `i_product_name` string 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/item/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.promotion (
  `p_promo_sk` int,
  `p_promo_id` string,
  `p_start_date_sk` int,
  `p_end_date_sk` int,
  `p_item_sk` int,
  `p_cost` decimal,
  `p_response_target` int,
  `p_promo_name` string,
  `p_channel_dmail` string,
  `p_channel_email` string,
  `p_channel_catalog` string,
  `p_channel_tv` string,
  `p_channel_radio` string,
  `p_channel_press` string,
  `p_channel_event` string,
  `p_channel_demo` string,
  `p_channel_details` string,
  `p_purpose` string,
  `p_discount_active` string 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/promotion/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.reason (
  `r_reason_sk` int,
  `r_reason_id` string,
  `r_reason_desc` string 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/reason/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.ship_mode (
  `sm_ship_mode_sk` int,
  `sm_ship_mode_id` string,
  `sm_type` string,
  `sm_code` string,
  `sm_carrier` string,
  `sm_contract` string 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/ship_mode/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.store (
  `s_store_sk` int,
  `s_store_id` string,
  `s_rec_start_date` date,
  `s_rec_end_date` date,
  `s_closed_date_sk` int,
  `s_store_name` string,
  `s_number_employees` int,
  `s_floor_space` int,
  `s_hours` string,
  `s_manager` string,
  `s_market_id` int,
  `s_geography_class` string,
  `s_market_desc` string,
  `s_market_manager` string,
  `s_division_id` int,
  `s_division_name` string,
  `s_company_id` int,
  `s_company_name` string,
  `s_street_number` string,
  `s_street_name` string,
  `s_street_type` string,
  `s_suite_number` string,
  `s_city` string,
  `s_county` string,
  `s_state` string,
  `s_zip` string,
  `s_country` string,
  `s_gmt_offset` decimal,
  `s_tax_precentage` decimal 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/store/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.store_returns (
  `sr_returned_date_sk` int,
  `sr_return_time_sk` int,
  `sr_item_sk` int,
  `sr_customer_sk` int,
  `sr_cdemo_sk` int,
  `sr_hdemo_sk` int,
  `sr_addr_sk` int,
  `sr_store_sk` int,
  `sr_reason_sk` int,
  `sr_ticket_number` int,
  `sr_return_quantity` int,
  `sr_return_amt` decimal,
  `sr_return_tax` decimal,
  `sr_return_amt_inc_tax` decimal,
  `sr_fee` decimal,
  `sr_return_ship_cost` decimal,
  `sr_refunded_cash` decimal,
  `sr_reversed_charge` decimal,
  `sr_store_credit` decimal,
  `sr_net_loss` decimal 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/store_returns/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.store_sales (
  `ss_sold_date_sk` int,
  `ss_sold_time_sk` int,
  `ss_item_sk` int,
  `ss_customer_sk` int,
  `ss_cdemo_sk` int,
  `ss_hdemo_sk` int,
  `ss_addr_sk` int,
  `ss_store_sk` int,
  `ss_promo_sk` int,
  `ss_ticket_number` int,
  `ss_quantity` int,
  `ss_wholesale_cost` decimal,
  `ss_list_price` decimal,
  `ss_sales_price` decimal,
  `ss_ext_discount_amt` decimal,
  `ss_ext_sales_price` decimal,
  `ss_ext_wholesale_cost` decimal,
  `ss_ext_list_price` decimal,
  `ss_ext_tax` decimal,
  `ss_coupon_amt` decimal,
  `ss_net_paid` decimal,
  `ss_net_paid_inc_tax` decimal,
  `ss_net_profit` decimal 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/store_sales/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.time_dim (
  `t_time_sk` int,
  `t_time_id` string,
  `t_time` int,
  `t_hour` int,
  `t_minute` int,
  `t_second` int,
  `t_am_pm` string,
  `t_shift` string,
  `t_sub_shift` string,
  `t_meal_time` string 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/time_dim/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.warehouse (
  `w_warehouse_sk` int,
  `w_warehouse_id` string,
  `w_warehouse_name` string,
  `w_warehouse_sq_ft` int,
  `w_street_number` string,
  `w_street_name` string,
  `w_street_type` string,
  `w_suite_number` string,
  `w_city` string,
  `w_county` string,
  `w_state` string,
  `w_zip` string,
  `w_country` string,
  `w_gmt_offset` decimal 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/warehouse/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.web_page (
  `wp_web_page_sk` int,
  `wp_web_page_id` string,
  `wp_rec_start_date` date,
  `wp_rec_end_date` date,
  `wp_creation_date_sk` int,
  `wp_access_date_sk` int,
  `wp_autogen_flag` string,
  `wp_customer_sk` int,
  `wp_url` string,
  `wp_type` string,
  `wp_char_count` int,
  `wp_link_count` int,
  `wp_image_count` int,
  `wp_max_ad_count` int 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/web_page/'
TBLPROPERTIES ('has_encrypted_data'='false');


_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.web_returns (
  `wr_returned_date_sk` int,
  `wr_returned_time_sk` int,
  `wr_item_sk` int,
  `wr_refunded_customer_sk` int,
  `wr_refunded_cdemo_sk` int,
  `wr_refunded_hdemo_sk` int,
  `wr_refunded_addr_sk` int,
  `wr_returning_customer_sk` int,
  `wr_returning_cdemo_sk` int,
  `wr_returning_hdemo_sk` int,
  `wr_returning_addr_sk` int,
  `wr_web_page_sk` int,
  `wr_reason_sk` int,
  `wr_order_number` int,
  `wr_return_quantity` int,
  `wr_return_amt` decimal,
  `wr_return_tax` decimal,
  `wr_return_amt_inc_tax` decimal,
  `wr_fee` decimal,
  `wr_return_ship_cost` decimal,
  `wr_refunded_cash` decimal,
  `wr_reversed_charge` decimal,
  `wr_account_credit` decimal,
  `wr_net_loss` decimal 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/web_returns/'
TBLPROPERTIES ('has_encrypted_data'='false');

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.web_sales (
  `ws_sold_date_sk` int,
  `ws_sold_time_sk` int,
  `ws_ship_date_sk` int,
  `ws_item_sk` int,
  `ws_bill_customer_sk` int,
  `ws_bill_cdemo_sk` int,
  `ws_bill_hdemo_sk` int,
  `ws_bill_addr_sk` int,
  `ws_ship_customer_sk` int,
  `ws_ship_cdemo_sk` int,
  `ws_ship_hdemo_sk` int,
  `ws_ship_addr_sk` int,
  `ws_web_page_sk` int,
  `ws_web_site_sk` int,
  `ws_ship_mode_sk` int,
  `ws_warehouse_sk` int,
  `ws_promo_sk` int,
  `ws_order_number` int,
  `ws_quantity` int,
  `ws_wholesale_cost` decimal,
  `ws_list_price` decimal,
  `ws_sales_price` decimal,
  `ws_ext_discount_amt` decimal,
  `ws_ext_sales_price` decimal,
  `ws_ext_wholesale_cost` decimal,
  `ws_ext_list_price` decimal,
  `ws_ext_tax` decimal,
  `ws_coupon_amt` decimal,
  `ws_ext_ship_cost` decimal,
  `ws_net_paid` decimal,
  `ws_net_paid_inc_tax` decimal,
  `ws_net_paid_inc_ship` decimal,
  `ws_net_paid_inc_ship_tax` decimal,
  `ws_net_profit` decimal 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/web_sales/'
TBLPROPERTIES ('has_encrypted_data'='false')

_______________________________________________________

CREATE EXTERNAL TABLE IF NOT EXISTS tpcds100gbtrial.web_site (
  `web_site_sk` int,
  `web_site_id` string,
  `web_rec_start_date` string,
  `web_rec_end_date` string,
  `web_name` string,
  `web_open_date_sk` int,
  `web_close_date_sk` int,
  `web_class` string,
  `web_manager` string,
  `web_mkt_id` int,
  `web_mkt_class` string,
  `web_mkt_desc` string,
  `web_market_manager` string,
  `web_company_id` int,
  `web_company_name` string,
  `web_street_number` string,
  `web_street_name` string,
  `web_street_type` string,
  `web_suite_number` string,
  `web_city` string,
  `web_county` string,
  `web_state` string,
  `web_zip` string,
  `web_country` string,
  `web_gmt_offset` decimal,
  `web_tax_percentage` decimal 
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '|',
  'field.delim' = '|',
  'collection.delim' = 'undefined',
  'mapkey.delim' = 'undefined'
) LOCATION 's3://tpcds100gbcsv/web_site/'
TBLPROPERTIES ('has_encrypted_data'='false')
