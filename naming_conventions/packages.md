パッケージ
==========

ScalaのパッケージはJavaにおけるパッケージの命名規則に従います。:

    // 誤り！
    package coolness

    // 正しい！
    package com.novell.coolness

    // パッケージオブジェクトcom.novell.coolnessとして正しい。
    package com.novell
    /**
     * coolnessに関連したクラスを提供する。
     */
    package object coolness {
    }

2.8以前のバージョン
-------------------

Scala2.8でパッケージの動作は変更されました。2.7以前のバージョンでは，ネストしたパッケージと組み合わさった時に
時折問題を起こす事があることに気をつけてください。 :

    import net.liftweb._

このimport文は，`net`パッケージが`java.net`パッケージ（や同様のもの）を参照してしまい，解決に失敗するでしょう。
この動作を補正するには，`_root`ディレクティブを使って，ネストしたパッケージ解決を上書きしてimport文を完全修飾する事が
必要になります。 :

    import _root_.net.liftweb._

このディレクティブを多用しないでください。一般に，ネストしたパッケージ解決は煩雑なimport文を減らす優れた手段となります。
`_root_`を使うと，その利点を帳消しにするだけでなく，更に乱雑なimport文を増やす結果になってしまいます。
