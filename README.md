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
「The Borenow!」というSNSアプリケーションです。
## 概要
暇な時に、他に暇な人を見つけて連絡を取り合う簡易版twetterのようなアプリケーションです。
機能内容は
- ユーザー登録
- 投稿
- 投稿の削除、編集
- 投稿に対してのコメント
- 投稿に対してのいいね
- ユーザー同士のフォロー
- ユーザー同士のダイレクトメッセージ
以上です。

# Why
私が学んだ600時間の学習カリキュラムで学んだ内容、
そしてその応用や、カリキュラム外で学んだ内容のアウトプットのために制作しました。

# 「The Borenow!」DB設計
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