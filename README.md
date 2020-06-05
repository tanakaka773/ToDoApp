# アプリ名

TODOAPP

# 概要

予定を登録、整理できるアプリです。

# 制作背景

Ruby on Railを使った技術でwebサービスによく使われているform処理やアカウントの登録など基礎を学習したくて作りました。

実装することにより今後の開発に必要な基礎知識を身につける事と、自分の課題（今回は、formの処理など）を見つける事で知識を増やし今後の開発に今まで以上にスムーズに取り組む事、より良い開発ができるように意識しました。


また、自分で使ってみる事の出来るアプリ開発で実際使ってみる事でユーザー目線で何が足りないかを理解し不便なところを実際自分で感じより使いやすいアプリ開発実現の為。

# イメージ画像

<img width="720" alt="DEMO" src="https://user-images.githubusercontent.com/62636793/83269898-b3e53a00-a202-11ea-87aa-0317e93bc7a9.png">

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

