##弓矢の雨使用
#近くの矢にタグを付ける
    tag @n[type=arrow] add four_skill
    tag @n[type=arrow] add tick
    tag @n[type=arrow] add first_shot
    tag @s add skill_use
#クールタイムを付与
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[0].time set value 700