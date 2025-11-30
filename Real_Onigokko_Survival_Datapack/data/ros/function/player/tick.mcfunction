##tick処理(プレイヤー)
#右クリック処理
    execute if score @s right_click matches 1.. run function ros:player/item/right_click_check
#クロスボウ
    execute as @a[tag=crossbow_charge] at @s run function ros:player/item/season1/dirt_crossbow_charge
#リセット
    advancement revoke @s only ros:system/tick