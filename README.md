# アプリ名

TODOAPP

# 概要

予定を登録、整理できるアプリです。

# 制作背景

Ruby on Railsの基礎を学習したくて作りました。
プログラミングスクールで学習したがなかなか知識の定着ができたいないのでカリキュラムで学んだことを復習しながら作った事のないアプリ開発をしたく作りました
webサービスによく使われている技術を実装したアプリ開発をすることで今後の開発に必要な基礎知識を身につける事と、自分の課題を見つける事で知識を増やす為

# イメージ画像

![](https://i.gyazo.com/
d04f07f5f85eea4ac95f516563ef981b.png)

# 接続先URL

https://afternoon-beyond-78853.herokuapp.com/

## テスト用アカウント
Email       test@to
Password    000111

# 工夫したポイント

今まで使ったことのなかったCSSライブラリを使っての実装をすることで便利な技術をどんどん取り入れてく。
ログイン機能の実装。
様々な記事を読み自分では考えていなかったところなど確認することで出来ることなどの確認。

# 課題や今後実装したい機能

CSSライブラリをうまく活用できてないので細かいところの修正します
自分の情報が見にくいのでもっと使いやすいように修正します
グループ機能などの実装し、予定の共有など出来るようにしたいです
日付などの表示の仕方をもっと丁寧にします


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

