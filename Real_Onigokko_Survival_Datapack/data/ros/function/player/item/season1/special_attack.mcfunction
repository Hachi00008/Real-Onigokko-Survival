##王の剣で殴られたときの処理
#30%の確率で雷を出す
    execute if predicate ros:special_attack run tag @s add special_attack
    schedule function ros:player/item/season1/additional_attack 15t