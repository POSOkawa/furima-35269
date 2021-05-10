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
- has_many :furima
- has_many :whobuy

## furimas テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| setumei   | text | null: false |
| price   | integer | null: false |
| user   | references | null: false, foreign_key: true |
| basyo_id   | integer | null: false |
| category_id   | integer | null: false |
| futan_id   | integer | null: false |
| hassou_id   | integer | null: false |
| jyoutai_id   | integer | null: false |

### Association

- belongs_to :user
- has_one :whobuy

## wheredelis テーブル
| Column | Type   | Options     |
| ------ | ------ | ----------- |
| basyo_id   | integer | null: false |
| yubin   | string | null: false |
| phone   | string | null: false |
| sityoson  | string| null: false |
| banti   | string | null: false |
| tatemono   | string |
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
has_one_to :wheredeli