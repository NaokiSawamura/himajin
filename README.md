# README

# What
アプリケーション名「The Borenow!」
暇な時に、他に暇な人を見つけて連絡を取り合う簡易版twetterのようなアプリケーションです。
機能内容は
- ユーザー登録
- 投稿
- 投稿の削除、編集
- 投稿に対してのコメント
- 投稿に対してのいいね
- ユーザー同士のフォロー
- ユーザー同士のダイレクトメッセージ

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
