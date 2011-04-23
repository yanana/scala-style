.. Objects
オブジェクト
-------

.. Objects follow the class naming convention (camelCase with a capital first letter)
   except when attempting to mimic a package.  This is a fairly rare case, but it
   does come up on occasion::
オブジェクトは，クラスの命名規約（大文字始まりのキャメルケース）に従います。ただし，パッケージを模したオブジェクトは除きます。\
かなり稀なケースですが，まさにこれが必要となる場合があります。 ::
    
    object ast {
      sealed trait Expr
      
      case class Plus(e1: Expr, e2: Expr) extends Expr
      ...
    }
    
.. In *all* other cases, objects should be named according to the class naming
   convention.
その他\ **全ての**\ ケースでは，オブジェクトはクラスの命名規則に従います。

