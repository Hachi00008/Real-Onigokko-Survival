##スキルの使用
#スコアを増やす
    scoreboard players add @s Ability_timer 1
#スコアごとの処理
    execute if score @s Ability_timer matches 1.. run particle smoke ~ ~ ~ 1 1 1 0.5 30
    execute if score @s Ability_timer matches 1 run playsound entity.creeper.primed master @a ~ ~ ~ 1.0 1.0
    execute if score @s Ability_timer matches 45 run playsound entity.warden.sonic_charge master @a ~ ~ ~ 1.0 1.5
    execute if score @s Ability_timer matches 60 run effect give @s resistance infinite 255 true
    execute if score @s Ability_timer matches 60 run summon creeper ~ ~ ~ {ExplosionRadius:20,Fuse:0,NoAI:true,powered:true}
    execute if score @s Ability_timer matches 60 run playsound entity.dragon_fireball.explode master @a ~ ~ ~ 1.0 1.0
    execute if score @s Ability_timer matches 60 run particle explosion_emitter ~ ~ ~ 1.5 1.5 1.5 0 10
    execute if score @s Ability_timer matches 62 run effect clear @s resistance
    execute if score @s Ability_timer matches 62 run tag @s add safe_fall
    execute if score @s Ability_timer matches 62 run scoreboard players set @s Cooltime 200