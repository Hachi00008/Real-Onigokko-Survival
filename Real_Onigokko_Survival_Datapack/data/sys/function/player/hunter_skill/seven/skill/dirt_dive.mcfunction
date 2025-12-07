##土潜り
#演出
    execute if entity @s[tag=!dirt_dive_skill] run particle block{block_state:"dirt"} ~ ~1 ~ 0.5 1 0.5 10 50
#透明化
    execute if entity @s[tag=!dirt_dive_skill] run effect give @s invisibility infinite 0 true
    execute if entity @s[tag=!dirt_dive_skill] run item modify entity @s armor.head sys:empty_armor_head
    execute if entity @s[tag=!dirt_dive_skill] run item modify entity @s armor.chest sys:empty_armor_chest
    execute if entity @s[tag=!dirt_dive_skill] run item modify entity @s armor.legs sys:empty_armor_legs
    execute if entity @s[tag=!dirt_dive_skill] run item modify entity @s armor.feet sys:empty_armor_feet
#タグを付ける
    tag @s add dirt_dive_skill
    tag @s add dirt_dive_use
#アイテム変更
    item modify entity @s weapon.mainhand [{function:"set_components",components:{item_model:"ros:season1/invisible"}}]
#エフェクト付与
    effect give @s weakness infinite 255 true
#クールタイム処理
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[3].time set value 1800