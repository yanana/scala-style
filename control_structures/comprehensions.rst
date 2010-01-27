Comprehensions
--------------

Scala has the ability to represent ``for``-comprehensions with more than one
generator (usually, more than one ``<-`` symbol).  In such cases, there are two
alternative syntaxes which may be used::
    
    // wrong!
    for (x <- board.rows; y <- board.files) 
      yield (x, y)
    
    // right!
    for {
      x <- board.rows
      y <- board.files
    } yield (x, y)
    
While the latter style is more verbose, it is generally considered easier to read
and more "scalable" (meaning that it does not become obfuscated as the complexity
of the comprehension increases).  You should prefer this form for all
``for``-comprehensions of more than one generator.  Comprehensions with only a
single generator (e.g. ``for (i <- 0 to 10) yield i``) should use the first
form (parentheses rather than curly braces).

The exceptions to this rule are ``for``-comprehensions which lack a ``yield``
clause.  In such cases, the construct is actually a loop rather than a functional
comprehension and it is usually more readable to string the generators together
between parentheses rather than using the syntactically-confusing ``} {``
construct::
    
    // wrong!
    for {
      x <- board.rows
      y <- board.files
    } {
      printf("(%d, %d)", x, y)
    }
    
    // right!
    for (x <- board.rows; y <- board.files) {
      printf("(%d, %d)", x, y)
    }

Finally, ``for`` comprehensions are preferred to chained calls to
``map``, ``flatMap``, and ``filter``, as this can get difficult
to read (this is one of the purposes of the enhanced ``for`` 
comprehension).
