type options =
  { mutable ident : int
  ; mutable margin : int
  }

let options = { ident = 2; margin = 100 }

let () =
  let usage_msg = "Usage: cat somefile | pp_sexp -ident 2 -margin 80" in
  let rec spec =
    [ ( "-ident"
      , Arg.Int
          (fun id ->
            assert (id >= 0);
            options.ident <- id)
      , Format.sprintf "Set ident size (default=%d)" options.ident )
    ; ( "-margin"
      , Arg.Int
          (fun m ->
            assert (m > 0);
            options.margin <- m)
      , Format.sprintf "Set margin size (default=%d)" options.margin )
    ; ( "-h"
      , Arg.Unit
          (fun () ->
            Arg.usage spec usage_msg;
            exit 0)
      , "Display this list of options" )
    ]
  in
  Arg.parse
    spec
    (fun _ ->
      print_endline "See the 'pp_sexp -h' for help.";
      exit 1)
    usage_msg
;;

let () =
  Format.set_margin options.margin;
  Sexplib.Sexp.(input_sexps Stdlib.stdin |> List.iter (Format.printf "%a\n%!" (pp_hum_indent options.ident)))
;;
