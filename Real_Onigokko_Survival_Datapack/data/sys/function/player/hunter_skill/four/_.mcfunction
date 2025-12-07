##クロスボウ
#タグ付け
    tag @n[type=arrow] add four_arrow
    tag @n[type=arrow] add tick
#弓矢の雨
#クールタイム処理
    execute store result storage sys:skill cooltime int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].time
    execute if entity @s[x_rotation=-90..-75] if data storage sys:skill {cooltime:0} run function sys:player/hunter_skill/four/skill_use
#リセット
    data remove storage sys:skill cooltime
#アイテム持ち替え
    execute if items entity @s weapon.mainhand crossbow run item modify entity @s weapon.mainhand [{function:"set_components",components:{charged_projectiles:[{id:"arrow"}]}}]
    execute if items entity @s weapon.offhand crossbow run item modify entity @s weapon.offhand [{function:"set_components",components:{charged_projectiles:[{id:"arrow"}]}}]
#リセット
    advancement revoke @s only sys:system/skill/four/rapid_shot