##土の壁生成
#土を生成
    fill ^ ^ ^ ^ ^ ^10 dirt
#スコアを減らす
    scoreboard players remove @s Temporary 1
#スコアがなくなるまで再帰
    execute if score @s Temporary matches 1.. rotated ~10 0 run function ros:player/item/season1/dirt_wall_rec