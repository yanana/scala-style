Structural Types
----------------

Structural types should be declared on a single line if they are less than 50
characters in length.  Otherwise, they should be split across multiple lines and
(usually) assigned to their own type alias::
    
    // wrong!
    def foo(a: { def bar(a: Int, b: Int): String; val baz: List[String => String] }) = ...
    
    // right!
    private type FooParam = {
      val baz: List[String => String]
      def bar(a: Int, b: Int): String
    }
    
    def foo(a: FooParam) = ...
    
Simpler structural types (under 50 characters) may be declared and used inline::
    
    def foo(a: { val bar: String }) = ...
    
When declaring structural types inline, each member should be separated by a
semi-colon and a single space, the opening brace should be *followed* by a space
while the closing brace should be *preceded* by a space (as demonstrated in both
examples above).


