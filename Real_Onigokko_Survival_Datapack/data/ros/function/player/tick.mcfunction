##tick処理(プレイヤー)
#右クリック処理
    execute if score @s right_click matches 1.. run function ros:player/item/right_click_check
#雪玉処理
    execute if score @s snowball_shot matches 1.. run function ros:player/item/snowball_check
#クロスボウ
    execute as @a[tag=crossbow_charge] at @s run function ros:player/item/season1/dirt_crossbow_charge
#討伐報酬の設定
    execute if score @s reward_book matches 1.. run function ros:player/item/reward_book/_
#リセット
    advancement revoke @s only ros:system/tick