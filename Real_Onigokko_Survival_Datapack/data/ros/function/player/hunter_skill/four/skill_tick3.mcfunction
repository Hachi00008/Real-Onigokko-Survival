##tick処理(矢)
#スコアを増やす
    scoreboard players add @s entity_tick 1
#スコアが200の矢をkill
    execute if score @s entity_tick matches 200.. run kill @s