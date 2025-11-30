##右クリック時の処理
#土のクロスボウ
    execute if predicate ros:has_dirt_crossbow if predicate ros:has_dirt run tag @s add crossbow_charge
#リセット
    scoreboard players reset @s right_click