##tick処理(鬼)
#スキル
    execute if score @s Hunter_number matches 3 run function sys:player/hunter_skill/three/_
    execute if score @s Hunter_number matches 4 run function sys:player/hunter_skill/four/tick
    execute if score @s Hunter_number matches 5 run function sys:player/hunter_skill/five/_
    execute if score @s Hunter_number matches 6 run function sys:player/hunter_skill/six/_
    execute if score @s Hunter_number matches 7 run function sys:player/hunter_skill/seven/_
#落下耐性
    execute if entity @s[tag=safe_fall] run attribute @s safe_fall_distance base set 1024
    execute if predicate sys:is_graund run tag @s remove safe_fall
    execute unless entity @s[tag=safe_fall] run attribute @s safe_fall_distance base reset
#リセット
    advancement revoke @s only sys:system/hunter_tick