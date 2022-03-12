open OUnit2
open Ocaml_intrinsics.Int

let suite = "Intrinsics tests" >::: [
  "clz"     >:: (fun _ -> assert_equal 28 (count_leading_zeros 0x400000000));
  "clz2"    >:: (fun _ -> assert_equal 28 (count_leading_zeros2 0x400000000));
  "ctz"     >:: (fun _ -> assert_equal 34 (count_trailing_zeros 0x400000000));
  "popcnt"  >:: (fun _ -> assert_equal 24 (count_set_bits 0xdeadbeef));
  "popcnt2" >:: (fun _ -> assert_equal 24 (count_set_bits2 0xdeadbeef));
]

let _ = run_test_tt_main suite
