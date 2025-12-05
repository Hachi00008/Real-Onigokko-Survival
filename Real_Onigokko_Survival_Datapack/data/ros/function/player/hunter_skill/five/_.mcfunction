##スキルの判定
#スキルの使用
    execute if predicate ros:skill_use run function ros:player/hunter_skill/five/use
#スキル未使用
    execute unless predicate ros:skill_use run scoreboard players set @s Ability_timer 0