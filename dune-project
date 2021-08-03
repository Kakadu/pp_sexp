(lang dune 2.8)
(generate_opam_files true)


(source (github Kakadu/pp_sexp))
(license GPL)
(authors "Kakadu")
(maintainers "Kakadu@pm.me")

(package (name pp_sexp)
 (synopsis "A simple program to pretty-print s-expressions")

 (depends (sexplib (> v0.9.0))))
