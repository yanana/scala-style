.. Higher-Kinds
高階型
~~~~~~~~~~~~

.. While higher-kinds are theoretically no different from regular type parameters
   (except that their kind_ is at least ``*=>*`` rather than simply ``*``), their
   naming conventions do differ somewhat.  Generally, higher-kinded parameters are
   two upper-case characters, usually repeated.  For example::
理論的には，高階型変数は通常の型変数と何ら変わりありません（その\ 種_\ が単純な\ ``*``\ ではなく，\
少なくとも\ ``* => *``\ である場合を除いて）が，その命名規約はいくらか異なります。\
一般に，高階型変数は大文字2文字で，普通は同じ文字を2文字重ねます。例えば，次の様になります。 ::
    
    class HOMap[AA[_], BB[_]] { ... }
    
.. It is also (sometimes) acceptable to give full, descriptive names to higher-kinded
   parameters.  In this case, use all-caps to make it clear you are not referring
   to a class or trait.  Thus, the following would be an equally valid definition of ``HOMap``::
高階型変数は，時に完全に記述的な名称が使われる事もあります。この場合，クラスやトレイトを参照しているのでは無いことを\
明確にするため，全て大文字で記述します。したがって，次の例もまた等価な\ ``HOMap``\ の定義となります。 ::
    
    class HOMap[KEY[_], VALUE[_]] { ... }
    
.. In such cases, the type naming conventions should be observed.
高階型変数を持つ場合も，型の命名規約は遵守するべきです。

.. _種: http://en.wikipedia.org/wiki/Kind_(type_theory)

