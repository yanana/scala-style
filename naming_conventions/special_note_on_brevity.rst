.. Special Note on Brevity
表現の簡潔さに関する特記
-----------------------

.. Because of Scala's roots in the functional languages, it is quite normal for
   local field names to be extremely brief::
函数型言語を背景に持つことから，ローカルフィールドの名前が非常にそっけない事は日常茶飯事です。 ::
    
    def add(a: Int, b: Int) = a + b
    
.. While this would be bad practice in languages like Java, it is *good* practice
   in Scala.  This convention works because properly-written Scala methods are
   quite short, only spanning a single expression and rarely going beyond a few
   lines.  Very few local fields are ever used (including parameters), and so there
   is no need to contrive long, descriptive names.  This convention substantially
   improves the brevity of most Scala sources.
Javaの様な言語ではこれは良くない慣習とされていますが，Scalaにおいては\ *良い*\ 習慣です。\
この規約が奏功する理由は，適切に書かれたScalaのメソッドは，単一の式で，稀に数行に渡る程度で相当に短くなるためです。\
ローカルフィールドはおよそ使われることは無いため，長く記述的な名称を設計する必要はありません。\
この規約は殆どのScalaソースコードの簡潔性を大いに向上します。

.. This convention only applies to parameters of very simple methods (and local fields for 
   very simply classes); everything in the public interface should be descriptive.
この規約はとてもシンプルなメソッド（と非常にシンプルなクラスのフィールド）の引数にのみ適用されます。\
パブリックインターフェースの要素はすべからく記述的たるべきです。
