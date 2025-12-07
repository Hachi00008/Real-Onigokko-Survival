##陸ノ鬼
#UI
    title @s actionbar [{text:"| "},{text:"skill"},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].skill',storage:"oh_my_dat:"},{text:" : "},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].time',storage:"oh_my_dat:",interpret:false},{text:" skill"},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[1].skill',storage:"oh_my_dat:"},{text:" : "},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[1].time',storage:"oh_my_dat:",interpret:false},{text:" skill"},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[2].skill',storage:"oh_my_dat:"},{text:" : "},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[2].time',storage:"oh_my_dat:",interpret:false},{text:" |"}]
#スキル
#火炎耐性
    effect give @s fire_resistance 10 0 true
#空中飛行
    execute if entity @s[tag=six_fly_skill] run function sys:player/hunter_skill/six/skill/fly_rec
#武器ごとに処理を変更
#剣
    execute if predicate sys:skill_use_sword run function sys:player/hunter_skill/six/skill/sword
#斧
    execute if predicate sys:skill_use_axe run function sys:player/hunter_skill/six/skill/axe
#つるはし
    execute if predicate sys:skill_use_pickaxe run function sys:player/hunter_skill/six/skill/pickaxe