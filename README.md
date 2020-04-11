## 逆転教材クローンアプリ

### 開発環境

- Ruby 2.7.2
- Rails 6.0.3.4
- PostgreSQL

### 開発環境構築(Ruby)

Ruby 2.7.2 をインストールされていない場合は以下を実行して下さい。Rubyのバージョンごとにrailsをインストールする必要があります。

```
cd
brew update
brew upgrade rbenv ruby-build
rbenv install 2.7.2
rbenv local 2.7.2
gem install rails
```

VSCodeの教材で環境構築を行い，拡張機能を利用されている場合は以下も実行してください。

```
gem install solargraph
gem install htmlbeautifier
gem install rufo
```

### 開発環境構築(Railsアプリ)

```
git clone URL名
cd リポジトリ名
bundle install
yarn install --check-files
rails db:create db:migrate
```

### ブランチモデル

ブランチ名 | 目的 | 備考
--- | --- | ---
main | リリース用 | masterではない！
develop | 開発用 | 機能実装用のブランチはここから切ること！
feature/hoge | 機能実装用 | 派生元はdevelopブランチとすること！

- 機能実装用のブランチは，必ず `feature/~~~` の形式として下さい
- `main` ブランチの運用方針はメンバー内で決めて下さい。

### 新規タスクにとりかかる手順

- 開発ブランチ（GitHubのデフォルトブランチ）は `develop` ブランチとします
  - 新規タスクに取りかかる際は，必ず `develop` ブランチから切って下さい
  - `main` ブランチから切らないようにして下さい

```
# git status で差分がないことを確認後
git switch develop
git pull origin HEAD
git switch -c feature/ブランチ名
```

`git switch -c feature/ブランチ名` と `git checkout -b ブランチ名` は同じコマンドです。

### コンフリクト解消時の注意

コンフリクトの解消はGitHub上で行わないようにして下さい。ローカルで解消し，動作確認をしてからレビュー依頼を出して下さい。

現在の開発ブランチをマージする際は以下の手順になります。

```
# git branch で作業ブランチにいることを確認後
git fetch --prune
git merge origin/develop
```

コンフリクトが起きているファイルは `git status` で確認できます。

`======` の「下側」が現在の開発状況，「上側」が自分の変更内容です。「下側」をベースに，「上側」の自分の変更を加えるのが原則です。

（単純に「両方残せばよい」「片方を削ればよい」という話ではありません）

`<<<<<<<`, `=======`, `>>>>>>>` が残った状態でレビュー依頼を出さないで下さい。

### タスク管理

`Trello` で行うこととします。

### 開発上の注意点

- 新しいタスク必ずブランチを切るようにして下さい

### 初期データ投入方法

- 開発環境のログイン用アカウントの投入
  - 通常ログイン（タスク5で作成）
  - 管理者ログイン（タスク13で作成）

```
rails db:seed
```

- 各種データの投入に必要なコマンドの確認
  - テキスト教材（タスク8で作成）
  - 動画教材（タスク14で作成）
  - その他（タスク19以降）

```
rake -T | grep import
```
