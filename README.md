# README

This README would normally document whatever steps are necessary to get the
application up and running.

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| namef     | string | null: false |
| kana    | string | null: false |
| kanaf    | string | null: false |
| nickname     | string | null: false |
| email    | string | null: false, unique: true |
| encrypted_password | string | null: false |
| birthd | date | null: false |


### Association
- has_many :furimas
- has_many :whobuys

## furimas テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| info   | text | null: false |
| price   | integer | null: false |
| user   | references | null: false, foreign_key: true |
| prefecture_id   | integer | null: false |
| category_id   | integer | null: false |
| shipping_fee_status_id   | integer | null: false |
| delivery_day_id   | integer | null: false |
| sales_status_id   | integer | null: false |

### Association

- belongs_to :user
- has_one :whobuy

## wheredelis テーブル
| Column | Type   | Options     |
| ------ | ------ | ----------- |
| prefecture_id   | integer | null: false |
| postal_code  | string | null: false |
| phone   | string | null: false |
| city  | string| null: false |
| address   | string | null: false |
| building_name   | string |
| whobuy   | references | null: false, foreign_key: true |


### Association

belongs_to :whobuy

## whobuy テーブル
| Column | Type   | Options     |
| ------ | ------ | ----------- |
| user   | references | null: false, foreign_key: true |
| furima   | references | null: false, foreign_key: true |
### Association

- belongs_to :user
- belongs_to :furima
has_one :wheredeli