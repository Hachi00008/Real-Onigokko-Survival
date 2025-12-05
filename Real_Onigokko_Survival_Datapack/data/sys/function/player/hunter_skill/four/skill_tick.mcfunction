##tick処理(矢)
#スコアを増やす
    scoreboard players add @s entity_tick 1
#スコアが30の矢に雷を降らす
    execute if score @s entity_tick matches 1.. run particle flash{color:[1,1,1,0]} ~ ~ ~ 0 0 0 1 10 force @a
    execute if score @s entity_tick matches 20 run summon lightning_bolt ~ ~ ~
    execute if score @s entity_tick matches 20 run function sys:player/hunter_skill/four/trigger
    execute if score @s entity_tick matches 20 run function sys:player/hunter_skill/four/trigger
    execute if score @s entity_tick matches 20 run function sys:player/hunter_skill/four/trigger
    execute if score @s entity_tick matches 20 run kill @e[tag=four_skill_arrow]
    execute if score @s entity_tick matches 20 run kill @s