表現の簡潔さに関する特記事項
============================

関数型言語をその背景に持つことから，Scalaではローカルフィールドの名前が非常にそっけない事は日常茶飯事です。
:

    def add(a: Int, b: Int) = a + b

Javaの様な言語ではこれは良くない慣習とされていますが，Scalaにおいては**良い**習慣です。
この規約が奏功する理由は，適切に書かれたScalaのメソッドは，単一の式で，稀に数行に渡る程度で相当に短くなるためです。
ローカルフィールドはおよそ使われることは無いため，長く記述的な名称を設計する必要はありません。
この規約は殆どのScalaソースコードの簡潔性を大いに向上します。

この規約はとてもシンプルなメソッド（と非常にシンプルなクラスのフィールド）の引数にのみ適用されます。
パブリックインターフェースの要素はすべからく記述的たるべきです。