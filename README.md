# README

This README would normally document whatever steps are necessary to get the
application up and running.

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| kana    | string | null: false |
| nickname     | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| birthd | string | null: false |

## items テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| setumei   | string | null: false |
| price   | string | null: false |
| user   | references | null: false, foreign_key: true |
| article   | references | null: false |


## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

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