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


    opam pin add https://github.com/Kakadu/pp_sexp --yes
