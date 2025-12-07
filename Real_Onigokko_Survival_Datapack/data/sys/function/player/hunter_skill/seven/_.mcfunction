##漆ノ鬼
#UI
    title @s actionbar [{text:"| "},{text:"skill"},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].skill',storage:"oh_my_dat:"},{text:" : "},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].time',storage:"oh_my_dat:",interpret:false},{text:" skill"},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[1].skill',storage:"oh_my_dat:"},{text:" : "},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[1].time',storage:"oh_my_dat:",interpret:false},{text:" skill"},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[2].skill',storage:"oh_my_dat:"},{text:" : "},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[2].time',storage:"oh_my_dat:",interpret:false},{text:" skill"},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[3].skill',storage:"oh_my_dat:"},{text:" : "},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[3].time',storage:"oh_my_dat:",interpret:false},{text:" |"}]
#スキル
#土潜り
    execute unless entity @s[tag=dirt_dive_skill] if items entity @s weapon.mainhand netherite_shovel run item modify entity @s weapon.mainhand [{function:"set_components",components:{"item_model":"netherite_shovel"}}]
    execute if entity @s[tag=dirt_dive_skill] run function sys:player/hunter_skill/seven/skill/dirt_dive_rec
#武器ごとに処理を変更
#剣
    execute if predicate sys:skill_use_sword run function sys:player/hunter_skill/seven/skill/sword
#斧
#つるはし
#しゃべる
    execute if predicate sys:skill_use_shovel run function sys:player/hunter_skill/seven/skill/shovel