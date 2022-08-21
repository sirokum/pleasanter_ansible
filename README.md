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
