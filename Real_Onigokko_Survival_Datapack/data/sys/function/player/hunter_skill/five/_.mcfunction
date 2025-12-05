##スキルの判定
#スキルの使用
    execute if predicate sys:skill_use run function sys:player/hunter_skill/five/use
#スキル未使用
    execute unless predicate sys:skill_use run scoreboard players set @s Ability_timer 0