##土の壁を使用したときの処理
#アマスタを召喚
    summon minecraft:armor_stand ~ ~ ~ {Tags:["dirt_wall","tick"],Rotation:[0,0],Invisible:true}
#エフェクト付与
    execute at @e[tag=dirt_wall] as @a[distance=..10] run effect give @s levitation 1 1 true
#リセット
    advancement revoke @s only sys:system/item/season1/dirt_wall_use