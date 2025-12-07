##クールタイム処理
#スキル1
    execute store result score @s Cooltime run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].time
    execute if score @s Cooltime matches 1.. run scoreboard players remove @s Cooltime 1
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].time int 1 run scoreboard players get @s Cooltime
    scoreboard players reset @s Cooltime
#スキル2
    execute store result score @s Cooltime run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[1].time
    execute if score @s Cooltime matches 1.. run scoreboard players remove @s Cooltime 1
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[1].time int 1 run scoreboard players get @s Cooltime
    scoreboard players reset @s Cooltime
#スキル3
    execute store result score @s Cooltime run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[2].time
    execute if score @s Cooltime matches 1.. run scoreboard players remove @s Cooltime 1
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[2].time int 1 run scoreboard players get @s Cooltime
    scoreboard players reset @s Cooltime
#スキル4
    execute store result score @s Cooltime run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[3].time
    execute if score @s Cooltime matches 1.. run scoreboard players remove @s Cooltime 1
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[3].time int 1 run scoreboard players get @s Cooltime
    scoreboard players reset @s Cooltime