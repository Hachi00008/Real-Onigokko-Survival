##本物の物資を破壊したときの処理
#近くのアイテム化した物資の座標にルートテーブルを召喚
    execute as @n[type=item,predicate=sys:true_material] at @s run loot spawn ~ ~ ~ loot sys:season1_material
#近くのアイテム化した物資をkill
    kill @n[type=item,predicate=sys:true_material]
#リセット
    advancement revoke @s only sys:system/material/true