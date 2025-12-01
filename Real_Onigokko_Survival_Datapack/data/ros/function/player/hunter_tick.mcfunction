##tick処理(鬼)
#スキル
    execute if score @s Hunter_number matches 3 run function ros:player/hunter_skill/three/_
#リセット
    advancement revoke @s only ros:system/hunter_tick