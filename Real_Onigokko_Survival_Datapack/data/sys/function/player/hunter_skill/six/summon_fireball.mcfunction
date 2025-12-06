##炎の玉
#ファイアーボールを召喚する
    execute anchored eyes positioned ^ ^ ^1 run summon fireball ~ ~ ~ {ExplosionPower:1,acceleration_power:0.1}
#クールタイムを設定
    scoreboard players set @s Cooltime 60