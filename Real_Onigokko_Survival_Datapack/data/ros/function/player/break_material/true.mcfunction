##本物の物資を破壊したときの処理
#近くのアイテム化した物資の座標にルートテーブルを召喚
    execute as @n[type=item,predicate=ros:true_material] at @s run loot spawn ~ ~ ~ loot ros:material
#近くのアイテム化した物資をkill
    kill @n[type=item,predicate=ros:true_material]
#リセット
    advancement revoke @s only ros:system/material/true