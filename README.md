# pleasanter_ansible
### Pleasanterインストール用Ansible(UbuntuServer20.04専用)

Implem社のOSS"Pleasanter"をインストールするためのAnsibleです

"プリザンターをUbuntuにインストールする"ページの内容を自動実行するためだけのものになっています
https://pleasanter.org/manual/getting-started-pleasanter-ubuntu

#### 前提条件
- Ubuntu Server 20.04
- Ansibleインストール済み
- Ansibleはリモートではなくローカルで実行
- sudo suした状態（rootユーザ）での実行

#### 使い方
- Ubuntu Server 20.04をセットアップし、Ansibleをインストール
```
sudo apt install ansible
```
- 任意のディレクトリに"pleasanter_ansible"のファイルを用意する
- main.ymlの内容を適宜編集
pleasanterのバージョン、DBパスワード、pleasanterをインストールするサーバのhost名orIPAddress　等
社内LAN等でProxy経由が必要な場合はそちらも設定
- sudo suコマンドでルートユーザにスイッチ
- Ansibleでmain.ymlを読み込み実行
```
sudo su
ansible-playbook main.yml
```
- Webブラウザから```http://インストールサーバhost名orIPAdress```でアクセス
- 初期ユーザはID:Administrator、PW:pleasanterでアクセス

#### 注意事項
"プリザンターをUbuntuにインストールする"ページ内容との相違点は
- OSのpostgresユーザにパスワードを設定していない
- ufwコマンドでport:22も通信許可している（ssh接続を許可）
- PostgreSQLの設定は外部からの接続を許可する設定```listen_addresses = '*'```としていますがufwコマンドでport:5432の通信許可はしていません
必要な場合はpg_hba.confの内容と共に適宜対応をしてください。

以上のことからあくまで内部でのお試し用Pleasanterを構築するためとして、本番環境を構築するのには適さないのをご承知ください
