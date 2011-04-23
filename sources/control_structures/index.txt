.. Control Structure
制御構造
==================

.. All control structures should be written with a space following the defining
   keyword::
全ての制御構造は，キーワードの後ろにスペースを置いて書くべきです。 ::
    
    // 正しい!
    if (foo) bar else baz
    for (i <- 0 to 10) { ... }
    while (true) { println("Hello, World!") }
    
    // 誤り!
    if(foo) bar else baz
    for(i <- 0 to 10) { ... }
    while(true) { println("Hello, World!") }
    
.. toctree::

   curly_braces
   comprehensions
   trivial_conditionals
