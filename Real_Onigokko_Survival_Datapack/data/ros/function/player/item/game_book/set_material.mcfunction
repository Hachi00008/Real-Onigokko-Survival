##物資召喚用のアマスタ召喚
#プレイ範囲のロード
    forceload add ~-250 ~-250 ~-50 ~-50
    forceload add ~-250 ~250 ~-50 ~50
    forceload add ~250 ~-250 ~50 ~-50
    forceload add ~250 ~250 ~50 ~50
    forceload add ~-50 ~-50 ~50 ~50
    execute as @a if loaded ~-250 ~ ~-250 run tellraw @a [{text:"~-250 ~ ~-250 loaded!"}]
    execute as @a if loaded ~250 ~ ~250 run tellraw @a [{text:"~250 ~ ~250 loaded!"}]
    execute as @a if loaded ~-250 ~ ~250 run tellraw @a [{text:"~-250 ~ ~250 loaded!"}]
    execute as @a if loaded ~250 ~ ~-250 run tellraw @a [{text:"~250 ~ ~-250 loaded!"}]
#再帰処理
    function ros:player/item/game_book/rec
#散開させる
    execute at @e[type=armor_stand,tag=map_center] run spreadplayers ~ ~ 10 250 false @e[tag=material_summon]
    execute as @e[tag=material_summon] at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
#ブロックのセット
    execute as @e[tag=material_summon] at @s run setblock ~ ~ ~ beehive{bees:[{entity_data:{id:"marker"},min_ticks_in_hive:999999999,ticks_in_hive:999999999},{entity_data:{id:"marker"},min_ticks_in_hive:999999999,ticks_in_hive:999999999},{entity_data:{id:"marker"},min_ticks_in_hive:999999999,ticks_in_hive:999999999},{entity_data:{id:"marker"},min_ticks_in_hive:999999999,ticks_in_hive:999999999},{entity_data:{id:"marker"},min_ticks_in_hive:999999999,ticks_in_hive:999999999},{entity_data:{id:"marker"},min_ticks_in_hive:999999999,ticks_in_hive:999999999},{entity_data:{id:"marker"},min_ticks_in_hive:999999999,ticks_in_hive:999999999},{entity_data:{id:"marker"},min_ticks_in_hive:999999999,ticks_in_hive:999999999},{entity_data:{id:"marker"},min_ticks_in_hive:999999999,ticks_in_hive:999999999},{entity_data:{id:"marker"},min_ticks_in_hive:999999999,ticks_in_hive:999999999}],components:{custom_data:{"material":true}}}
#スコアリセット
    scoreboard players set $now Material_count 0
#あますたのkill
    kill @e[tag=material_summon]
#演出
    playsound entity.player.levelup master @a ~ ~ ~ 1.0 1.0
    title @a title [{text:"物資配置完了",bold:true,color:"gold",underlined:true}]
    title @a subtitle [{text:"Complete",bold:true,color:"green"}]