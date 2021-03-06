# customer_management
![image](https://github.com/tanakadaichi1989/customer_management/blob/master/image.png)
![image](https://github.com/tanakadaichi1989/customer_management/blob/master/image2.png)

## 作成したアプリ：顧客管理アプリ

### どんなアプリ？
どのスタッフが、どんな方法で、いつクライアントと接触したか管理するアプリ

## このアプリでどんな課題を解決できるか？
### 1.営業活動量を可視化できる
グラフで営業活動量を可視化することで、
電話・メール・アポイントが、どう売り上げに繋がったのか客観的に理解できる。

→ どう営業活動を行えば効率的に成果を挙げられるか、逆算できる。

### 2.外出先からも利用可能
Webを閲覧できる環境があれば、社内・社外そしてPC・タブレット・スマホからアクセス可能

→ 事務作業時間・勤務時間の削減
→ 顧客に向かう時間の増大


## コントローラ・モデル
### Staffコントローラ
・新規登録
・ログイン/ログオフ機能

### Customerコントローラ
・新規登録

### Contactコントローラ
・接触内容の登録
・接触内容の編集


### Staffモデル
|カラム|型|
|-|-|
|name|String|
|email|String|
|password_digest|String|

### Customerモデル
|カラム|型|
|-|-|
|name|String|
|company|String|
|telephone|String|
|email|String|
|address|String|

### Contactモデル
|カラム|型|
|-|-|
|staff_id|Integer|
|customer_id|Integer|
|contact_day|Date|
|contact_way|String|
|memo|text|
|contacted_staff_id|Integer|

## 利用した技術

### BootStrap
CSS/JavaScriptライブラリ

### Chartkick
Rails上でグラフを表示させるライブラリ

### BCRypt
パスワード暗号化

## その他
制作費用： ¥0-.

## 本番環境（Heroku）にUPしたもの
《アドレス》
https://customer-management-20180120.herokuapp.com/login

《ログイン情報》
アドレス：sample@sample.com
パスワード：samplesample

### お願い
ポートフォリオとして作成したものです。新規登録（SignUp）をせず、ログイン（LogIn）してください。
このサイトに登録しているアドレス・電話番号・住所はすべてダミーです。実在する情報を登録しないでください。

