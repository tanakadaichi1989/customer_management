# customer_management
![image](https://github.com/tanakadaichi1989/customer_management/blob/master/image.png)

## Staffコントローラ
・新規登録
・ログイン/ログオフ機能

## Customerコントローラ
・新規登録

## Contactコントローラ
・接触内容の登録
・接触内容の編集


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
|telephone|String|
|email|String|
|address|String|

## Contactモデル
|カラム|型|
|-|-|
|staff_id|Integer|
|customer_id|Integer|
|contact_day|Date|
|contact_way|String|
|memo|text|
|contacted_staff_id|Integer|

## 利用する技術

### BootStrap
CSS/JavaScriptライブラリ

### Chartkick
Rails上でグラフを表示させるライブラリ

