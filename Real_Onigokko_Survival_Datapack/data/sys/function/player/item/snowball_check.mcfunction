##雪玉の処理
#グレネード
    execute as @n[type=snowball] if predicate sys:grenade_check at @s run function sys:player/item/season1/grenade_use
#リセット
    scoreboard players reset @s snowball_shot