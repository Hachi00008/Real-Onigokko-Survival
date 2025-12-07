##炎の雨tick処理
#スコアを追加
    scoreboard players add @s entity_tick 1
#散開させる
    spreadplayers ~ ~ 2 40 false @e[type=armor_stand,tag=fire_rain]
#その場に炎を設置
    execute at @e[type=armor_stand,tag=fire_rain] run setblock ~ ~ ~ fire
#演出
    execute as @e[type=armor_stand,tag=fire_rain] at @s run particle lava ~ ~ ~ 0 5 0 0.1 30
    execute at @e[type=armor_stand,tag=fire_rain] run playsound item.firecharge.use master @a ~ ~ ~ 1.0 1.7
    execute at @e[type=armor_stand,tag=fire_rain] run playsound item.firecharge.use master @a ~ ~ ~ 1.0 1.4
#アマスタをkill
    execute if score @s entity_tick matches 160.. run kill @e[type=armor_stand,tag=fire_rain]
    execute if score @s entity_tick matches 160.. run kill @s