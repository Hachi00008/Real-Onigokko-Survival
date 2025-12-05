##右クリック時の処理
#土のクロスボウ
    execute if predicate sys:has_dirt_crossbow if predicate sys:has_dirt run tag @s add crossbow_charge
#リセット
    scoreboard players reset @s right_click