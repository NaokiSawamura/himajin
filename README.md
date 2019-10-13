# README

This README would normally document whatever steps are necessary to get the
application up and running.

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

# What
「hinmajin」というSNSアプリケーションです。
内容は、
- 投稿機能
- 投稿の削除、編集機能
- 投稿に対してのコメント機能
- 投稿に対してのいいね機能
- ユーザー同士のフォロー機能
- ユーザー同士のダイレクトメッセージ機能
以上です。

# Why
私が学んだ600時間の学習カリキュラムで学んだ内容、
そしてその応用や、カリキュラム外で学んだ内容のアウトプットのために制作しました。

# himajinDB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|avatar|text|null: true|
|profile|text|null: true|
### Association
- has_many :tweets
- has_many :comments

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: user_id|
|content|text|null: false|
### Association
- belongs_to :user
- has_many :images
- belongs_to :category
- belongs_to :brand
- belongs_to :senddate
- belongs_to :sendmethod
- belongs_to :quality

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: user_id|
|tweet_id|integer|null: false, foreign_key: tweet_id|
|content|text|null: false|
### Association
- belongs_to :user
- belongs_to :tweet

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: user_id|
|tweet_id|integer|null: false, foreign_key: tweet_id|
|content|text|null: false|
### Association
- belongs_to :user
- belongs_to :tweet