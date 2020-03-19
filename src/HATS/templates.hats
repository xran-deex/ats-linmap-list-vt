staload "./../SATS/linmap_list.sats"

implement
equal_key_key<strptr>(k1,k2) = $UNSAFE.castvwtp1{string}(k1) = $UNSAFE.castvwtp1{string}(k2)
// implement
// compare_key_key<strptr>(k1,k2) = compare(k1,k2)

implement
copy_key<strptr>(k) = res where {
  val () = assertloc(strptr_isnot_null(k))
  val res = copy(k)
}
implement
free_key<strptr>(k) = free(k)