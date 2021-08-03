##### Pretty-printing of s-expressions

Use `pp_sexp -h` for details.

```
✗ echo '(aaa  bbbb ccc ddd eee fff)' | pp_sexp -margin 10
(aaa bbbb
  ccc ddd
  eee
  fff)
```

##### Installation
- ocaml >= 4.03.0

    opam pin add https://github.com/Kakadu/pp_sexp.git --yes
