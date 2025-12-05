##tick処理(矢)
#スコアを増やす
    scoreboard players add @s entity_tick 1
#スコアが200の矢をkill
    execute if score @s entity_tick matches 1.. run particle entity_effect{color:[0,0,0,1]} ~ ~ ~
    execute if score @s entity_tick matches 100.. run kill @s