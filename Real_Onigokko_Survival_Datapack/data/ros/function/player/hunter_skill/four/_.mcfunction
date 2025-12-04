##クロスボウ
#タグ付け
    tag @n[type=arrow] add four_arrow
    tag @n[type=arrow] add tick
#弓矢の雨
    execute if entity @s[x_rotation=-90..-75] if score @s Cooltime matches ..0 run function ros:player/hunter_skill/four/skill_use
#アイテム持ち替え
    execute if items entity @s weapon.mainhand crossbow run item modify entity @s weapon.mainhand [{function:"set_components",components:{charged_projectiles:[{id:"arrow"}]}}]
    execute if items entity @s weapon.offhand crossbow run item modify entity @s weapon.offhand [{function:"set_components",components:{charged_projectiles:[{id:"arrow"}]}}]
#リセット
    advancement revoke @s only ros:system/skill/four/rapid_shot