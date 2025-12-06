##陸ノ鬼
#武器ごとに処理を変更
    execute if predicate sys:skill_use_sword run advancement grant @s only sys:system/skill/six/summon_fireball
    execute unless predicate sys:skill_use_sword run advancement revoke @s only sys:system/skill/six/summon_fireball