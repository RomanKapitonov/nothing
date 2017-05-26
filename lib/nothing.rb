module Nothing
  # Natural numbers

  # λf.(λz.z)
  ZERO  = -> f { -> z { z } }
  # λf.(λz.f(z))
  ONE   = -> f { -> z { f[z] } }
  # λf.(λz.f(f(z)))
  TWO   = -> f { -> z { f[f[z]] } }
  # λf.(λz.f(f(f(z))))
  THREE = -> f { -> z { f[f[f[z]]] } }

  # λn.(λf.(λx) nfx)
  TIMES     = -> n { -> f { -> x { n[f][x] } } }
  # λw.(λy.(λx.y(wyx)))
  INCREMENT = -> w { -> y { -> x { y[w[y][x]] } } }
  # λn.λm.n(λw.(λy.(λx.y(wyx))))m
  ADD       = -> a { -> b { a[INCREMENT][b] } }
  # λx.λy.λz.x(yz)
  MULTIPLY  = -> x { -> y { -> z { x[y[z]] } } }
  # λx.λe.ex
  POWER     = -> x { -> e { e[x] } }
  # λn.λf.λx.n (λg.λh.h (g f)) (λu.x) (λu.u)
  DECREMENT = -> n { -> f { -> x { n[-> g { -> h { h[g[f]] } }][-> a { x }][-> b { b }] } } }
  # λa.λb.a DECREMENT b
  SUBTRACT  = -> a { -> b { a[DECREMENT[b]] } }

  # Booleans

  # λx.(λy.x)
  TRUE  = -> x { -> y { x } }
  # λx.(λy.y)
  FALSE = -> x { -> y { y } }
  # λx.x
  IF    = -> b { b }

  # λx.(x(λa.λb.b)(λc.λd.c))
  NOT = -> x { IF[x][FALSE][TRUE] }
  # λx.λy.xy(λab.b)
  AND = -> x {
    -> y {
      IF[x][IF[y]][FALSE]
    }
  }
  # λx.λy.x(λab.a)y
  OR  = -> x {
    -> y {
      IF[x][TRUE][IF[y]]
    }
  }

  # Natural numbers with booleans

  # IS_ZERO           =
  # IS_LESS_OR_EQUAL  =
  # IS_EQUAL          =

  # Natural numbers with recursion

  # FACTORIAL =
  # DIV       =
  # MOD       =

  # Pairs

  # PAIR  =
  # LEFT  =
  # RIGHT =

  # Lists

  # EMPTY     =
  # UNSHIFT   =
  # IS_EMPTY  =
  # FIRST     =
  # REST      =

  # RANGE   =
  # SUM     =
  # PRODUCT =
  # CONCAT  =
  # PUSH    =
  # REVERSE =

  # INCREMENT_ALL =
  # DOUBLE_ALL    =

  # Natural numbers with lists

  # TO_DIGITS =
  # TO_STRING =

  # FizzBuzz

  # FIZZBUZZ =
end
