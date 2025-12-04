##tick処理(矢)
#スコアを増やす
    execute if data entity @s {inGround:true} run scoreboard players add @s entity_tick 1
#スコアが60の矢を跳弾させる
    execute if score @s entity_tick matches 60 run function ros:player/hunter_skill/four/summon_arrow2
    execute if score @s entity_tick matches 60 run kill @s