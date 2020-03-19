#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

#include "../linmap_list_vt.hats"

staload $LM

implement linmap_freelin$clear<strptr,strptr>(k,v) = () where {
    val () = strptr_free(k)
    val () = strptr_free(v)
}

implement main(argc, argv) = 0 where {

    var map = linmap_nil{strptr,strptr}()

    val-~None_vt() = linmap_insert_opt(map, copy "hello", copy "world")

    val key = copy "hello"
    val-~Some_vt(v) = linmap_takeout_opt(map, key)
    val () = println!("Key: ", key, ", value: ", v)
    val () = free(key)
    val () = free(v)

    val () = linmap_freelin(map)
}
