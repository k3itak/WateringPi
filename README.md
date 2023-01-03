# WateringPi (観葉植物遠隔水やりシステム)

このシステムは外出先から自宅の観葉植物の水やりを行うために開発した。
基本的なシステムを以下の6セクションに分けて説明する。
1. Dynamic DNSサービス
2. Webサーバ (Apache)
3. CGIプログラム
4. Raspberry Piによるポンプ制御
5. ポンプユニット
6. 散水部

### 1. Dynamic DNS
固定IPサービスを使わない限り、プロバイダから割り当てられるIPアドレスは動的(Dynamic)なので、いつも同じとは限らない。
Dynamic DNSサービスを用いて、あらかじめ登録したURLを踏むと必ず家のルーターにアクセスされるように設定する。
Dynamic DNSサービスはいろいろあるが、今回は[Dynu](https:www.dynu.com/en-US)を利用した。
