## 逆転教材クローンアプリ

### 開発環境

- Ruby 2.7.2
- Rails 6.0.3.4
- PostgreSQL

Ruby 2.7.2 をインストールされていない場合は以下を実行して下さい。Rubyのバージョンごとにrailsをインストールする必要があります。

```
cd
brew update
brew upgrade rbenv ruby-build
rbenv install 2.7.2
rbenv local 2.7.2
gem install rails
```

VSCodeの拡張機能を利用されている場合は以下も実行してください。

```
gem install solargraph
gem install htmlbeautifier
gem install rufo
```

### 開発環境構築

```
git clone URL名
cd リポジトリ名
bundle install
yarn install --check-files
rails db:create db:migrate
```

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
