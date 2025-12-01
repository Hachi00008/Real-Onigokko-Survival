##討伐報酬の設定
#参ノ鬼
    execute if score @s reward_book matches 1 run function ros:player/item/reward_book/season1/three
#肆ノ鬼
    execute if score @s reward_book matches 2
#伍ノ鬼
    execute if score @s reward_book matches 3 run function ros:player/item/reward_book/season1/five
#陸ノ鬼
    execute if score @s reward_book matches 4
#漆ノ鬼
    execute if score @s reward_book matches 5 run function ros:player/item/reward_book/season1/seven
#捌ノ鬼
    execute if score @s reward_book matches 6
#玖ノ鬼
    execute if score @s reward_book matches 7
#討伐報酬のリセット
    execute if score @s reward_book matches -1 run function ros:player/item/reward_book/season1/reward_reset
#リセット
    scoreboard players reset @s reward_book
    scoreboard players enable @s reward_book