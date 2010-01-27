Fields
~~~~~~

Fields should follow the declaration rules for methods, taking special note of
access modifier ordering and annotation conventions.

Lazy vals should use the ``lazy`` keyword directly before the ``val``::

    private lazy val foo = bar()
