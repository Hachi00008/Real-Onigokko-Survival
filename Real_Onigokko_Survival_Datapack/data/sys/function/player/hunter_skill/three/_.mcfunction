##スキルの判定
#UI
    title @s actionbar [{text:"| "},{text:"skill"},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].skill',storage:"oh_my_dat:"},{text:" : "},{nbt:'_[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].time',storage:"oh_my_dat:",interpret:false},{text:" |"}]
#スキル使用
#クールタイム処理
    execute store result storage sys:skill cooltime int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].time
    execute if predicate sys:is_sneaking if entity @s[x_rotation=75..90] if data storage sys:skill {cooltime:0} run function sys:player/hunter_skill/three/use
#リセット
    data remove storage sys:skill cooltime
#スキル未使用
    execute unless predicate sys:is_sneaking run scoreboard players set @s Ability_timer 0
    execute unless entity @s[x_rotation=75..] run scoreboard players set @s Ability_timer 0