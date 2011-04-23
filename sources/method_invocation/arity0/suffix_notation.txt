Suffix Notation
~~~~~~~~~~~~~~~

Scala allows methods of arity-0 to be invoked using suffix notation::
    
    names.toList
    
    // is the same as
    
    names toList
    
This style should be used with great care.  In order to avoid ambiguity in Scala's
grammar, any method which is invoked via suffix notation must be the *last* item
on a given line.  Also, the following line must be completely empty, otherwise
Scala's parser will assume that the suffix notation is actually infix and will
(incorrectly) attempt to incorporate the contents of the following line into the
suffix invocation::
    
    names toList
    val answer = 42        // will not compile!
    
This style should only be used on methods with no side-effects, preferably ones
which were declared without parentheses (see above).  The most common acceptable
case for this syntax is as the last operation in a chain of infix method calls::
    
    // acceptable and idiomatic
    names map { _.toUpperCase } filter { _.length > 5 } toStream

In this case, suffix notation must be used with the ``toStream`` function,
otherwise a separate value assignment would have been required.  However, under
less specialized circumstances, suffix notation should be avoided::
    
    // wrong!
    val ls = names toList
    
    // right!
    val ls = names.toList
    
The primary exception to this rule is for domain-specific languages.  One very
common use of suffix notation which goes against the above is converting a
``String`` value into a ``Regexp``::
    
    // tolerated
    val reg = """\d+(\.\d+)?"""r
    
In this example, ``r`` is actually a method available on type ``String`` via an
implicit conversion.  It is being called in suffix notation for brevity.
However, the following would have been just as acceptable::
    
    // safer
    val reg = """\d+(\.\d+)?""".r

