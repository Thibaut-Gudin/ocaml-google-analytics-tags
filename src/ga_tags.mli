[@@@js.stop]

val available : unit -> bool

val ga_set : field:string -> value:string -> unit

[@@@js.start]

[@@@js.implem
let available () = Js_of_ocaml.Js.Optdef.test Js_of_ocaml.Js.Unsafe.global##.ga]

[@@@js.implem
let ga_set ~field ~value =
  Js_of_ocaml.Js.Unsafe.global##ga
    (Js_of_ocaml.Js.string "set")
    (Js_of_ocaml.Js.string field)
    (Js_of_ocaml.Js.string value)]

type hit_type =
  | PageView [@js "pageview"]
  | ScreenView [@js "screenview"]
  | Event [@js "event"]
  | Transaction [@js "transaction"]
  | Item [@js "Item"]
  | Social [@js "Social"]
  | Exception [@js "Exception"]
  | Timing [@js "timing"]
[@@js.enum]

type fields

val fields :
  ?page:string ->
  ?event_category:string ->
  ?event_action:string ->
  ?event_label:string ->
  ?event_value:string ->
  unit ->
  fields
  [@@js.builder] [@@js.verbatim_names]

[@@@js.stop]

val ga_send : hit_type -> fields -> unit

[@@@js.start]

(*TODO: es-ce que j'essaye de faire quelquechose d'impossible?*)

[@@@js.implem
let ga_send ht fields =
  Js_of_ocaml.Js.Unsafe.global##ga (Js_of_ocaml.Js.string "send") ht fields]
