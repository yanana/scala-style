Comprehensions
--------------

For-comprehensions allow great variety in their syntax.  To keep things consistent, use
parens for the generator clause, and use braces if you cannot fit
the entire expression on one line::

    for (x <- 1 to 100) yield x * x

    for (x <- 1 to 100; y <- 1 to 200) yield {
      if (x < y) x + y
      else x - y
    }

    // For more than two generators,
    // or if your generator expressions are
    // long, use mulitple lines
    for (x <- 1 to 100;
      y <- 1 to 400;
      z <- 4 to 44) {
      println(x + y + z)
    }

