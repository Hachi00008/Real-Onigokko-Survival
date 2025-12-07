##炎の玉
#ファイアーボールを召喚する
    execute anchored eyes positioned ^ ^ ^1 run summon fireball ~ ~ ~ {ExplosionPower:1,acceleration_power:0.1}
#クールタイムを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].skill set value 1
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].time set value 30