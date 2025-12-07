##斧のとき
#クールタイム処理
    execute store result storage sys:skill cooltime int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[1].time
    execute if data storage sys:skill {cooltime:0} run function sys:player/hunter_skill/six/skill/fly
#リセット
    data remove storage sys:skill cooltime