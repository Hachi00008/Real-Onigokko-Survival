##tick処理(エンティティ)
#土の壁
    execute as @e[tag=dirt_wall] at @s run function ros:player/item/season1/dirt_wall
#グレネード
    execute as @e[tag=grenade_check] at @s run function ros:player/item/season1/grenade
#肆の鬼矢
    execute as @e[tag=four_arrow] run data modify entity @s pickup set value 2b
#肆ノ鬼弓矢の雨
    execute as @e[tag=four_skill] at @s run function ros:player/hunter_skill/four/skill_tick
#肆ノ鬼弓矢の雨2
    execute as @e[tag=summon_arrow1] at @s run function ros:player/hunter_skill/four/skill_tick2
#肆ノ鬼弓矢の雨3
    execute as @e[tag=bound_arrow] at @s run function ros:player/hunter_skill/four/skill_tick3