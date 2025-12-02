##tick処理(鬼)
#スキル
    execute if score @s Hunter_number matches 3 run function ros:player/hunter_skill/three/_
#落下耐性
    execute if entity @s[tag=safe_fall] run attribute @s safe_fall_distance base set 1024
    execute if predicate ros:is_graund run tag @s remove safe_fall
    execute unless entity @s[tag=safe_fall] run attribute @s safe_fall_distance base reset
#リセット
    advancement revoke @s only ros:system/hunter_tick