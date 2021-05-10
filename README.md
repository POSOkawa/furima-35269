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
| email    | string | null: false |
| password | string | null: false |
| birthd | date | null: false |

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


Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
