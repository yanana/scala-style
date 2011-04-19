.. Packages
パッケージ
--------

.. Scala packages should follow the Java package naming conventions::
ScalaのパッケージはJavaにおけるパッケージの命名規則に従います。::

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
    
    

.. Versions Prior to 2.8
2.8以前のバージョン
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Scala 2.8 changes how packages worked.  For 2.7 and earlier, 
   please note that this convention does occasionally lead to problems when combined
   with Scala's nested packages feature.  For example::
Scala2.8でパッケージの動作は変更されました。2.7以前のバージョンでは，ネストしたパッケージと組み合わさった時に\
時折問題を起こす事があることに気をつけてください。 ::
    
    import net.liftweb._
    
.. This import will actually fail to resolve in some contexts as the ``net`` package
   may refer to the ``java.net`` package (or similar).  To compensate for this, it
   is often necessary to fully-qualify imports using the ``_root_`` directive,
   overriding any nested package resolves::
このimport文は，\ ``net``\ パッケージが\ ``java.net``\ パッケージ（や同様のもの）を参照してしまい，解決に失敗するでしょう。\
この動作を補正するには，\ ``_root``\ ディレクティブを使って，ネストしたパッケージ解決を上書きしてimport文を完全修飾する事が\
必要になります。 ::
    
    import _root_.net.liftweb._
    
.. Do not overuse this directive.  In general, nested package resolves are a good
   thing and very helpful in reducing import clutter.  Using ``_root_`` not only
   negates their benefit, but also introduces extra clutter in and of itself.
このディレクティブを多用しないでください。一般に，ネストしたパッケージ解決は煩雑なimport文を減らす優れた手段となります。\
\ ``_root_``\ を使うと，その利点を帳消しにするだけでなく，更に乱雑なimport文を増やす結果になってしまいます。

