##爆発チェック
#下に雪玉がいないなら爆発
    execute positioned ~ ~-0.2 ~ unless entity @e[type=snowball,predicate=ros:grenade_check,distance=..0.5] run summon creeper ~ ~ ~ {NoAI:true,ExplosionRadius:5b,Fuse:0}
    execute positioned ~ ~-0.2 ~ unless entity @e[type=snowball,predicate=ros:grenade_check,distance=..0.5] run kill @s