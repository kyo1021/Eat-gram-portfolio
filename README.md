# README
<br>

# Eat-gram-サイト名称

Eat-gramはユーザーがおすすめの飲食店を投稿し、他ユーザーの投稿を自由に閲覧できるグルメ共有サイトです。
投稿内容を飲食店に限ったインスタグラムをイメージとして作成しました。

heroku：https://still-crag-73732.herokuapp.com/

# Features-サイト機能

* ショップの投稿（店名・説明文・画像）
* 上記に伴う投稿内容の編集/削除機能
* 投稿されたショップの閲覧
* 他ユーザーの閲覧
* マイページの編集

# Requirement-動作環境

* Ruby v2.6.8
* Rails v6.1.5
* devise(アカウント登録システム)
* bulma-rails(CSSフレームワーク)

# Usage-実行方法

```bash
git clone https://github.com/kyo1021/Eat-gram-portfolio.git
cd Eat-gram-portfolio
rails db:migrate
(rails db:seed)→サンプルデータが追加されるだけですので、実行は必須ではないです。
rails s
```

# Note
CSSフレームワークとしてはBootstrapが有名ですが、Javascript(jQuery）がセットになっているのに対し、
BULMAはCSSのみのフレームワークで、vue.jsを組み合わせることも自由にできるため今回はこちらを採用いたしました。

# Author-作成者

* kyo1021

# License
MIT

<img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/kyo1021/Eat-gram-portfolio">
