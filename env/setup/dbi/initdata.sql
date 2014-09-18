-- Igor Azarny iazarny@yahoo.com.
-- Initial data.
--

-- SET character_set_client=utf8;
-- SET character_set_connection=utf8;

INSERT INTO TASSOCIATION(ASSOCIATION_ID, CODE, GUID, NAME, DESCRIPTION)  VALUES (1, 'accessories', 'accessories' , 'Accessories' , 'Product accessories');
INSERT INTO TASSOCIATION(ASSOCIATION_ID, CODE, GUID, NAME, DESCRIPTION)  VALUES (2, 'up',          'up' , 'Up sell' , 'Up sell');
INSERT INTO TASSOCIATION(ASSOCIATION_ID, CODE, GUID, NAME, DESCRIPTION)  VALUES (3, 'cross',       'cross' , 'Cross sell' , 'Cross sell');
INSERT INTO TASSOCIATION(ASSOCIATION_ID, CODE, GUID, NAME, DESCRIPTION)  VALUES (4, 'buywiththis', 'buywiththis' , 'Buy with this products' , 'Shoppers also buy with this product');
INSERT INTO TASSOCIATION(ASSOCIATION_ID, CODE, GUID, NAME, DESCRIPTION)  VALUES (5, 'expendable',  'expendable' , 'Expendable materials' , 'Expendable materials. Example inc for printer');


INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1000, 'java.lang.String', 'String', 'String');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1001, 'java.lang.String', 'URI', 'URI');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1002, 'java.lang.String', 'URL', 'URL');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1003, 'java.lang.String', 'Image', 'Image');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1004, 'java.lang.String', 'CommaSeparatedList', 'CommaSeparatedList');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1005, 'java.lang.Float', 'Float', 'Float');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1006, 'java.lang.Integer', 'Integer', 'Integer');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1007, 'java.lang.String', 'Phone', 'Phone');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1008, 'java.lang.Boolean', 'Boolean', 'Boolean');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1009, 'java.util.Date', 'Date', 'Date');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1010, 'java.lang.String', 'Email', 'Email');
INSERT INTO TETYPE (ETYPE_ID, JAVATYPE, BUSINESSTYPE, GUID) VALUES (1011, 'java.lang.String', 'HTML', 'HTML');

INSERT INTO TATTRIBUTEGROUP (ATTRIBUTEGROUP_ID, GUID, CODE, NAME, DESCRIPTION) VALUES (1000, 'SYSTEM',   'SYSTEM', 'System settings.', 'System wide settings');
INSERT INTO TATTRIBUTEGROUP (ATTRIBUTEGROUP_ID, GUID, CODE, NAME, DESCRIPTION) VALUES (1001, 'SHOP',     'SHOP', 'Shop settings.', '');
INSERT INTO TATTRIBUTEGROUP (ATTRIBUTEGROUP_ID, GUID, CODE, NAME, DESCRIPTION) VALUES (1002, 'CATEGORY', 'CATEGORY', 'Category settings.', '');
INSERT INTO TATTRIBUTEGROUP (ATTRIBUTEGROUP_ID, GUID, CODE, NAME, DESCRIPTION) VALUES (1003, 'PRODUCT',  'PRODUCT', 'Product settings.', '');
INSERT INTO TATTRIBUTEGROUP (ATTRIBUTEGROUP_ID, GUID, CODE, NAME, DESCRIPTION) VALUES (1005, 'BRAND',    'BRAND', 'Brand settings.', '');
INSERT INTO TATTRIBUTEGROUP (ATTRIBUTEGROUP_ID, GUID, CODE, NAME, DESCRIPTION) VALUES (1006, 'CUSTOMER', 'CUSTOMER', 'Customer settings.', '');

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID, guid)
  VALUES (  10998,  'PRICE_NAVIGATION_STRATEGY',  0,  NULL,  'Price navigation strategy',  '[STATIC] or [DYNAMIC]. DYNAMIC allow create price tier dynamically for not default currency',  1004, 1001, 'PRICE_NAVIGATION_STRATEGY');

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  10999,  'CURRENCY', 'CURRENCY',  0,  NULL,  'Currencies',  'Supported currencies by shop. First one is the default',  1004, 1001);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11000,  'SYSTEM_DEFAULT_SHOP', 'SYSTEM_DEFAULT_SHOP',  1,  NULL,  'System. Default shop',
  'This value will be used for redirects when shop can not be resolved by http request', 1002,  1000);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11040,  'SHOP_B2B', 'SHOP_B2B',  1,  NULL,  'Is B2B profile for this shop',  'Is B2B profile for this shop',  1000, 1001);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID, GUID)
  VALUES (  11041,  'SHOP_ADMIN_EMAIL',  1,  NULL,  'Shop admin email',  'Shop admin email',  1010, 1001, 'SHOP_ADMIN_EMAIL');

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11042,  'IMPORT_JOB_LOG_SIZE', 'IMPORT_JOB_LOG_SIZE',  1,  NULL,  'System. Import log file size in YUM',
  'Size in characters of tail of actual log file to display in YUM during import', 1006,  1000);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11043,  'IMPORT_JOB_TIMEOUT_MS', 'IMPORT_JOB_TIMEOUT_MS',  1,  NULL,  'System. Import job timeout',
  'Timeout in ms during which no ping action performed by import', 1006,  1000);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11044,  'SYSTEM_BACKDOOR_TIMEOUT_MS', 'SYSTEM_BACKDOOR_TIMEOUT_MS',  1,  NULL,  'System. Webservice timeout',
  'Timeout in ms for web service calls', 1006,  1000);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11045,  'SYSTEM_BACKDOOR_PRODB_IDX_TIMEOUT_MS', 'SYSTEM_BACKDOOR_PRODB_IDX_TIMEOUT_MS',  1,  NULL,
  'System. Webservice bulk product index timeout', 'Timeout in ms for web service calls', 1006,  1000);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11046,  'SYSTEM_BACKDOOR_PRODS_IDX_TIMEOUT_MS', 'SYSTEM_BACKDOOR_PRODS_IDX_TIMEOUT_MS',  1,  NULL,
  'System. Webservice single product index timeout', 'Timeout in ms for web service calls', 1006,  1000);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11047,  'SYSTEM_BACKDOOR_SQL_TIMEOUT_MS', 'SYSTEM_BACKDOOR_SQL_TIMEOUT_MS',  1,  NULL,
  'System. Webservice SQL, HSQL, FTQL timeout', 'Timeout in ms for web service calls', 1006,  1000);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11048,  'SYSTEM_BACKDOOR_CACHE_TIMEOUT_MS', 'SYSTEM_BACKDOOR_CACHE_TIMEOUT_MS',  1,  NULL,
  'System. Webservice clear cache timeout', 'Timeout in ms for web service calls', 1006,  1000);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11049,  'SYSTEM_BACKDOOR_IMAGE_TIMEOUT_MS', 'SYSTEM_BACKDOOR_IMAGE_TIMEOUT_MS',  1,  NULL,
  'System. Webservice image operation timeout', 'Timeout in ms for web service calls', 1006,  1000);


INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11098,  'SYSTEM_ETAG_CACHE_IMAGES_TIME', 'SYSTEM_ETAG_CACHE_IMAGES_TIME',  0,  NULL,  'Expiration value for images in minutes',
  'Expiration value for images in minutes. ETag', 1000,  1000);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11099,  'SYSTEM_IMAGE_VAULT', 'SYSTEM_IMAGE_VAULT',  1,  NULL,  'Root directory for image repository',
  'Root directory for image repository', 1000,  1000);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11100,  'SEARCH_ITEMS_PER_PAGE', 'SEARCH_ITEMS_PER_PAGE',  1,  NULL,  'Search items per page ',
  'Search items per page', 1004,  1000);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11101,  'SYSTEM_PAYMENT_MODULES_URLS', 'SYSTEM_PAYMENT_MODULES_URLS',  1,  NULL,  'Payment modules list ',
  'Payment modules list', 1004,  1000);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11102,  'SYSTEM_ACTIVE_PAYMENT_GATEWAYS_LABEL', 'SYSTEM_ACTIVE_PAYMENT_GATEWAYS_LABEL',  1,  NULL,  'Active payment modules ',
  'Active payment modules', 1004,  1000);


INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11001,  'BRAND_IMAGE', 'BRAND_IMAGE',  1,  NULL,  'Brand image',  null,  1003, 1005);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11002,  'CATEGORY_ITEMS_PER_PAGE', 'CATEGORY_ITEMS_PER_PAGE',  0,  NULL,  'Category item per page settings',
   'Category item per page settings with fail over',  1004, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11004,  'CATEGORY_IMAGE', 'CATEGORY_IMAGE',  0,  NULL,  'Category image',   'Category image',  1003, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11005,  'CATEGORY_IMAGE_RETRIEVE_STRATEGY', 'CATEGORY_IMAGE_RETRIEVE_STRATEGY',  0,  NULL,  'Strategy to retrieve image',
  'Strategy to retrieve images. Allowed values: [ATTRIBUTE] i.e. use CATEGORY_IMAGE attribute or [RANDOM_PRODUCT] i.e. random product image will be used',  1000, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11006,  'CATEGORY_DESCRIPTION_en', 'CATEGORY_DESCRIPTION_en',  0,  NULL,  'Category Description (en)',
  'Category Description in English (en)',  1011, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11007,  'CATEGORY_DESCRIPTION_ru', 'CATEGORY_DESCRIPTION_ru',  0,  NULL,  'Описание Категории (ru)',
  'Описание Категории на Русском (ru)',  1011, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11014,  'CATEGORY_DESCRIPTION_uk', 'CATEGORY_DESCRIPTION_uk',  0,  NULL,  'Опис Категорії (uk)',
  'Опис Категорії Українською (uk)',  1011, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11058,  'CATEGORY_ITEMS_FEATURED', 'CATEGORY_ITEMS_FEATURED',  0,  NULL,  'Quantity of featured items to show on category page',
   'How many featured items need to show',  1006, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11059,  'CATEGORY_ITEMS_NEW_ARRIVAL', 'CATEGORY_ITEMS_NEW_ARRIVAL',  0,  NULL,  'Quantity of new arrival items to show on category page',
   'Quantity of featured items to show on category page',  1006, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11060,  'CONTENT_BODY_en_1', 'CONTENT_BODY_en_1',  0,  NULL,  'Content body (en)',
  'Content body in English (en). 1st 4000 characters',  1011, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11061,  'CONTENT_BODY_en_2', 'CONTENT_BODY_en_2',  0,  NULL,  'Content body (en)',
  'Content body in English (en). 2nd 4000 characters',  1011, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11070,  'CONTENT_BODY_ru_1', 'CONTENT_BODY_ru_1',  0,  NULL,  'Текст контента (ru)',
  'Текст контента на Русском (ru). 1-е 4000 символов.',  1011, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11071,  'CONTENT_BODY_ru_2', 'CONTENT_BODY_ru_2',  0,  NULL,  'Текст контента (ru)',
  'Текст контента на Русском (ru). 2-е 4000 символов.',  1011, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11080,  'CONTENT_BODY_uk_1', 'CONTENT_BODY_uk_1',  0,  NULL,  'Текст контенту (uk)',
  'Текст контенту Українською (uk). 1-ші 4000 символів.',  1011, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11081,  'CONTENT_BODY_uk_2', 'CONTENT_BODY_uk_2',  0,  NULL,  'Текст контенту (uk)',
  'Текст контенту Українською (uk). 2-гі 4000 символів.',  1011, 1002);


INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  12000,  'PRODUCT_IMAGE_WIDTH', 'PRODUCT_IMAGE_WIDTH',  0,  NULL,  'Product image width in category',   'Product image width in category',  1006, 1002);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  12001,  'PRODUCT_IMAGE_HEIGHT', 'PRODUCT_IMAGE_HEIGHT',  0,  NULL,  'Product image height in category',   'Product image height in category',  1006, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  12050,  'PRODUCT_IMAGE_TUMB_WIDTH', 'PRODUCT_IMAGE_TUMB_WIDTH',  0,  NULL,  'Product thumbnail image width',   'Product thumbnail image width',  1006, 1002);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  12051,  'PRODUCT_IMAGE_TUMB_HEIGHT', 'PRODUCT_IMAGE_TUMB_HEIGHT',  0,  NULL,  'Product thumbnail image height',   'Product thumbnail image height',  1006, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11998,  'CATEGORY_IMAGE_WIDTH', 'CATEGORY_IMAGE_WIDTH',  0,  NULL,  'Category image  width ',   'Category image width thumbnail ',  1006, 1002);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11999,  'CATEGORY_IMAGE_HEIGHT', 'CATEGORY_IMAGE_HEIGHT',  0,  NULL,  'Category image   height',   'Category image height thumbnail ',  1006, 1002);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11008,  'IMAGE0', 'IMAGE0',  1,  NULL,  'Product default image',  'Product default image',  1003, 1003);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11009,  'IMAGE1', 'IMAGE1',  0,  NULL,  'Product alternative image 1',  'Product alternative image 1',  1003, 1003);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11010,  'IMAGE2', 'IMAGE2',  0,  NULL,  'Product alternative image 2',  'Product alternative image 2',  1003, 1003);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11011,  'IMAGE3', 'IMAGE3',  0,  NULL,  'Product alternative image 3',  'Product alternative image 3',  1003, 1003);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11012,  'IMAGE4', 'IMAGE4',  0,  NULL,  'Product alternative image 4',  'Product alternative image 4',  1003, 1003);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11013,  'IMAGE5', 'IMAGE5',  0,  NULL,  'Product alternative image 5',  'Product alternative image 5',  1003, 1003);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11020,  'PRODUCT_DESCRIPTION_en', 'PRODUCT_DESCRIPTION_en',  0,  NULL,  'Product Description (en)',  'Product Description in English (en)',  1011, 1003);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11021,  'PRODUCT_DESCRIPTION_ru', 'PRODUCT_DESCRIPTION_ru',  0,  NULL,  'Описание Продукта (ru)',  'Описание Продукта на Русском (ru)',  1011, 1003);

INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11022,  'PRODUCT_DESCRIPTION_uk', 'PRODUCT_DESCRIPTION_uk',  0,  NULL,  'Опис Продукту (uk)',  'Опис Продукту Українською (uk)',  1011, 1003);


INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11050,  'CUSTOMER_PHONE', 'CUSTOMER_PHONE',  1,  NULL,  'Phone',  'Phone', 1007,  1006);
INSERT INTO TATTRIBUTE (ATTRIBUTE_ID, GUID, CODE, MANDATORY, VAL, NAME, DESCRIPTION, ETYPE_ID, ATTRIBUTEGROUP_ID)
  VALUES (  11051,  'MARKETING_OPT_IN', 'MARKETING_OPT_IN',  0,  NULL,  'Marketing Opt in',  'If true then customer opted in for marketing contact', 1007,  1006);

INSERT INTO TPRODUCTTYPE (PRODUCTTYPE_ID, GUID, NAME, DESCRIPTION, UISEARCHTEMPLATE, SERVICE, ENSEMBLE, SHIPPABLE)
  VALUES (500,'Default Product', 'Default Product','Default Product','default', 0,0,1);
INSERT INTO TPRODUCTTYPE (PRODUCTTYPE_ID, GUID, NAME, DESCRIPTION, UISEARCHTEMPLATE, SERVICE, ENSEMBLE, SHIPPABLE)
  VALUES (501,'Default Accessory', 'Default Accessory','Default Accessory','default', 0,0,1);


INSERT INTO TSYSTEM (SYSTEM_ID, GUID, CODE, NAME, DESCRIPTION)  VALUES (100, 'YC', 'SYSTEM','Yes e-commerce platform', 'System table');

INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1000,'http://testdevshop.yes-cart.org:8080/yes-shop','SYSTEM_DEFAULT_SHOP',100, 'YC_SYSTEM_DEFAULT_SHOP');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1002,'10,20,40','SEARCH_ITEMS_PER_PAGE',100, 'YC_SEARCH_ITEMS_PER_PAGE');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1003,'context://../imagevault','SYSTEM_IMAGE_VAULT',100, 'YC_SYSTEM_IMAGE_VAULT');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1011,'basePaymentModule,cappPaymentModule,gswmPaymentModule','SYSTEM_PAYMENT_MODULES_URLS',100, 'YC_SYSTEM_PAYMENT_MODULES_URLS');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1012,'testPaymentGatewayLabel,courierPaymentGatewayLabel,cyberSourcePaymentGatewayLabel,authorizeNetAimPaymentGatewayLabel,authorizeNetSimPaymentGatewayLabel,payflowPaymentGatewayLabel,payPalNvpPaymentGatewayLabel,payPalExpressPaymentGatewayLabel,liqPayPaymentGatewayLabel,liqPayNoRefundPaymentGatewayLabel','SYSTEM_ACTIVE_PAYMENT_GATEWAYS_LABEL',100, 'YC_SYSTEM_ACTIVE_PAYMENT_GATEWAYS');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1014,'60','SYSTEM_ETAG_CACHE_IMAGES_TIME',100, 'YC_SYSTEM_ETAG_CACHE_IMAGES_TIME');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1015,'10000','IMPORT_JOB_LOG_SIZE',100, 'YC_IMPORT_JOB_LOG_SIZE');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1016,'60000','IMPORT_JOB_TIMEOUT_MS',100, 'YC_IMPORT_JOB_TIMEOUT_MS');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1017,'60000','SYSTEM_BACKDOOR_TIMEOUT_MS',100, 'YC_SYSTEM_BACKDOOR_TIMEOUT_MS');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1018,'60000','SYSTEM_BACKDOOR_PRODB_IDX_TIMEOUT_MS',100, 'YC_SYSTEM_BDOOR_PRODB_IDX_TIMEOUT_MS');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1019,'60000','SYSTEM_BACKDOOR_PRODS_IDX_TIMEOUT_MS',100, 'YC_SYSTEM_BDOOR_PRODS_IDX_TIMEOUT_MS');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1020,'60000','SYSTEM_BACKDOOR_SQL_TIMEOUT_MS',100, 'YC_SYSTEM_BACKDOOR_SQL_TIMEOUT_MS');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1021,'60000','SYSTEM_BACKDOOR_CACHE_TIMEOUT_MS',100, 'YC_SYSTEM_BACKDOOR_CACHE_TIMEOUT_MS');
INSERT INTO TSYSTEMATTRVALUE ( ATTRVALUE_ID,  VAL,  CODE, SYSTEM_ID, GUID)  VALUES (1022,'60000','SYSTEM_BACKDOOR_IMAGE_TIMEOUT_MS',100, 'YC_SYSTEM_BACKDOOR_IMAGE_TIMEOUT_MS');


INSERT INTO TSHOP (SHOP_ID, NAME, DESCRIPTION, FSPOINTER, CODE, GUID)  VALUES (10, 'YesCart shop', 'YesCart shop', 'default', 'SHOP10', 'SHOP10');
INSERT INTO TSHOPATTRVALUE(ATTRVALUE_ID,VAL,CODE,SHOP_ID, GUID)  VALUES (10, 'USD,EUR,UAH', 'CURRENCY', 10, 'USD,EUR,UAH');
INSERT INTO TSHOPATTRVALUE(ATTRVALUE_ID,VAL,CODE,SHOP_ID, GUID)  VALUES (11, 'DYNAMIC', 'PRICE_NAVIGATION_STRATEGY', 10, '123123-123123');
INSERT INTO TSHOPATTRVALUE(ATTRVALUE_ID,VAL,CODE,SHOP_ID, GUID)  VALUES (12, 'admin@at-shop-10.com', 'SHOP_ADMIN_EMAIL', 10, 'admin-email-guid');


INSERT INTO TWAREHOUSE (WAREHOUSE_ID, GUID, CODE, NAME, DESCRIPTION) VALUES (1, 'Main', 'Main', 'Main warehouse', null);
INSERT INTO TSHOPWAREHOUSE (SHOPWAREHOUSE_ID, SHOP_ID, WAREHOUSE_ID, RANK, GUID )
  VALUES (10, 10, 1, 10, 'SHOP10_Main' );

INSERT INTO TSHOPURL (STOREURL_ID, SHOP_ID, URL, GUID )  VALUES (10, 10, 'testdevshop.yes-cart.org', 'SHOP10_10');
INSERT INTO TSHOPURL (STOREURL_ID, SHOP_ID, URL, GUID )  VALUES (11, 10, 'www.testdevshop.yes-cart.org', 'SHOP10_11');
INSERT INTO TSHOPURL (STOREURL_ID, SHOP_ID, URL, GUID )  VALUES (12, 10, 'localhost', 'SHOP10_12');

INSERT INTO TCATEGORY(CATEGORY_ID, PARENT_ID, RANK, NAME, DESCRIPTION, UITEMPLATE, GUID) VALUES (100, 100, 0, 'root', 'Master category','default', '100');

INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (9000,'PRODUCT_IMAGE_WIDTH','280',100,'9000_CAV');
INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (9001,'PRODUCT_IMAGE_HEIGHT','280',100,'9001_CAV');
INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (9002,'PRODUCT_IMAGE_TUMB_WIDTH','80',100,'9002_CAV');
INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (9003,'PRODUCT_IMAGE_TUMB_HEIGHT','80',100,'9003_CAV');

INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (9004,'CATEGORY_IMAGE_WIDTH','80',100,'9004_CAV');
INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (9005,'CATEGORY_IMAGE_HEIGHT','80',100,'9005_CAV');

INSERT INTO TCATEGORY(CATEGORY_ID, PARENT_ID, RANK, NAME, DESCRIPTION, UITEMPLATE, GUID) VALUES (10000, 0, 0, 'SHOP10 Content', 'SHOP10 Content','content', 'SHOP10');
INSERT INTO TCATEGORY(CATEGORY_ID, PARENT_ID, RANK, NAME, DESCRIPTION, UITEMPLATE, GUID,URI) VALUES (10001, 10000, 0, 'License', 'License Page','content', 'License','license');
INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (12010,'CONTENT_BODY_en_1','<pre>Copyright 2009 Igor Azarnyi, Denys Pavlov

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        <a href="http://www.apache.org/licenses/LICENSE-2.0">http://www.apache.org/licenses/LICENSE-2.0</a>

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
</pre>',10001,'12010_CAV');
INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (12011,'CONTENT_BODY_ru_1','<pre>Copyright 2009 Igor Azarnyi, Denys Pavlov

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        <a href="http://www.apache.org/licenses/LICENSE-2.0">http://www.apache.org/licenses/LICENSE-2.0</a>

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
</pre>',10001,'12011_CAV');
INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (12014,'CONTENT_BODY_uk_1','<pre>Copyright 2009 Igor Azarnyi, Denys Pavlov

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        <a href="http://www.apache.org/licenses/LICENSE-2.0">http://www.apache.org/licenses/LICENSE-2.0</a>

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
</pre>',10001,'12014_CAV');
INSERT INTO TCATEGORY(CATEGORY_ID, PARENT_ID, RANK, NAME, DESCRIPTION, UITEMPLATE, GUID,URI) VALUES (10002, 10000, 0, 'Sitemap', 'Dynamic Content Site Map Page','dynocontent', 'Sitemap','sitemap');
INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (12012,'CONTENT_BODY_en_1','
<p>This page demonstrates dynamic content features</p>

<p>Links:
<ul>
  <li><a href="${contentURL(''license'')}">License page (content link)</a></li>
  <li><a href="${categoryURL(''netbooks'')}">Notebooks (category link)</a></li>
  <li><a href="${URL('''')}">Home (plain link)</a></li>
</ul>
</p>

<p>Dynamic variable: ${datetime}</p>

<p>Dynamic include:</p>

${include(''license'')}


',10002,'12012_CAV');
INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (12013,'CONTENT_BODY_ru_1','
<p>Данная страница демонстрирует использование динамического контента</p>

<p>Ссылки:
<ul>
  <li><a href="${contentURL(''license'')}">Страница Лицензии (ссылка на контент)</a></li>
  <li><a href="${categoryURL(''netbooks'')}">Категория "Ноутбуки" (ссылка на категорию)</a></li>
  <li><a href="${URL('''')}">Домашняя страничка (простая ссылка)</a></li>
</ul>
</p>

<p>Динамическая переменная: ${datetime}</p>

<p>Динамическая вставка суб-контента:</p>

${include(''license'')}

',10002,'12013_CAV');
INSERT INTO TCATEGORYATTRVALUE(ATTRVALUE_ID, CODE,VAL, CATEGORY_ID, GUID) VALUES (12015,'CONTENT_BODY_uk_1','
<p>Дана сторінка демонструє використання динамічного контенту</p>

<p>Посилання:
<ul>
  <li><a href="${contentURL(''license'')}">Сторінка Ліцензії (посилання на контент)</a></li>
  <li><a href="${categoryURL(''netbooks'')}">Категорія "Ноутбуки" (посилання на категорію)</a></li>
  <li><a href="${URL('''')}">Домашня сторінка (просте посилання)</a></li>
</ul>
</p>

<p>Динамічна змінна: ${datetime}</p>

<p>Динамічна вставка суб-контенту:</p>

${include(''license'')}

',10002,'12015_CAV');


INSERT INTO TROLE (ROLE_ID, GUID, CODE, DESCRIPTION) VALUES (1, 'ROLE_SMADMIN',         'ROLE_SMADMIN', 'System admin');
INSERT INTO TROLE (ROLE_ID, GUID, CODE, DESCRIPTION) VALUES (2, 'ROLE_SMSHOPADMIN',     'ROLE_SMSHOPADMIN', 'Shop manager');
INSERT INTO TROLE (ROLE_ID, GUID, CODE, DESCRIPTION) VALUES (3, 'ROLE_SMWAREHOUSEADMIN','ROLE_SMWAREHOUSEADMIN', 'Inventory manager');
INSERT INTO TROLE (ROLE_ID, GUID, CODE, DESCRIPTION) VALUES (4, 'ROLE_SMCALLCENTER',    'ROLE_SMCALLCENTER', 'Call centre operator');
INSERT INTO TROLE (ROLE_ID, GUID, CODE, DESCRIPTION) VALUES (5, 'ROLE_SMCONTENTADMIN',  'ROLE_SMCONTENTADMIN', 'Content manager');

-- default admin password 1234567
INSERT INTO TMANAGER (GUID, MANAGER_ID, EMAIL, FIRSTNAME, LASTNAME, PASSWORD) VALUES ('YCADMIN', 1, 'admin@yes-cart.com', 'Yes', 'Admin', 'fcea920f7412b5da7be0cf42b8c93759');

INSERT INTO TMANAGERROLE (MANAGERROLE_ID, EMAIL, CODE, GUID) VALUES (1, 'admin@yes-cart.com', 'ROLE_SMADMIN', 'YCADMIN_ROLE');

INSERT INTO HIBERNATE_UNIQUE_KEYS VALUES (100000);

COMMIT;