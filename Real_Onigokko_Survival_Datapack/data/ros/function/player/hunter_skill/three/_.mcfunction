##スキルの判定
#スキル使用
    execute if predicate ros:skill_use if entity @s[x_rotation=75..90] run function ros:player/hunter_skill/three/use
#スキル未使用
    execute unless predicate ros:skill_use run scoreboard players set @s Ability_timer 0
    execute unless entity @s[x_rotation=75..] run scoreboard players set @s Ability_timer 0