# customer_management

## Staffモデル
|カラム|型|
|-|-|
|name|String|
|email|String|
|password|String|

## Customerモデル
|カラム|型|
|-|-|
|name|String|
|company|String|
|telephone|Integer|
|email|String|

## Contactモデル
|カラム|型|
|-|-|
|staff_id|Integer|
|customer_id|Integer|
|contact_day|Date|
|contact_way|String|
|memo|text|