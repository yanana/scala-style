Objects
-------

Objects follow the class naming convention (camelCase with a capital first letter)
except when attempting to mimic a package.  This is a fairly rare case, but it
does come up on occasion::
    
    object ast {
      sealed trait Expr
      
      case class Plus(e1: Expr, e2: Expr) extends Expr
      ...
    }
    
In *all* other cases, objects should be named according to the class naming
convention.

