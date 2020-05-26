# TODOAPP

# 概要

予定を整理できるアプリです。

# 制作背景

Ruby on Railsの基礎を学習したくて作りました。
プログラミングスクールで学習したがなかなか知識の定着ができたいないのでカリキュラムで学んだことを復習しながら作った事のないアプリ開発をしたく、webサービスによく使われている技術を実装したアプリ開発で自分の課題を見つける事で知識を増やす為

# 工夫したポイント

CSSライブラリを使っての実装。
ログイン機能の実装。

# 接続先URL

https://afternoon-beyond-78853.herokuapp.com/


## users
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|reset_password_token||null: false, unique: true|
|encrypted_password||null: false|

### Association
- has_many :todos, dependent: :destroy
- has_one :userinfo, dependent: :destroy


## todosテーブル
|Column|Type|Options|
|------|----|-------|
|title|string||
|detail|text|
|user_id|refrence|foreign_key: true|

### Association
- belongs_to :user,optional: true


## userinfoテーブル

|Column|Type|Options|
|------|----|-------|
|name|string||
|profile|text||
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user,optional: true

