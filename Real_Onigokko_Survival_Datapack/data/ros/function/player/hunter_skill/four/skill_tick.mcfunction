##tick処理(矢)
#スコアを増やす
    scoreboard players add @s entity_tick 1
#スコアが30の矢に雷を降らす
    execute if score @s entity_tick matches 1.. run particle flash{color:[1,1,1,0]} ~ ~ ~ 0 0 0 1 10 force @a
    execute if score @s entity_tick matches 1.. run playsound ros:skill.four.arrow_rain master @a ~ ~ ~ 1.0 1.5
    execute if score @s entity_tick matches 45 run summon lightning_bolt ~ ~ ~
    execute if score @s entity_tick matches 45 run summon armor_stand ~1 ~ ~ {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~ ~ ~1 {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~-1 ~ ~ {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~ ~ ~-1 {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~ ~ ~ {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~3 ~ ~ {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~ ~ ~3 {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~-3 ~ ~ {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~ ~ ~-3 {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~ ~1 ~ {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~5 ~ ~ {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~ ~ ~5 {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~-5 ~ ~ {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~ ~ ~-5 {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 run summon armor_stand ~ ~2 ~ {Tags:["four_skill_arrow"],NoGravity:true}
    execute if score @s entity_tick matches 45 as @e[tag=four_skill_arrow] at @s run function ros:player/hunter_skill/four/summon_arrow1
    execute if score @s entity_tick matches 45 run kill @e[tag=four_skill_arrow]
    execute if score @s entity_tick matches 45 run kill @s