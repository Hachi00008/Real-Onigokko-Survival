##土潜りtick処理
#スコア増加
    scoreboard players add @s Ability_timer 1
#エフェクト付与
    execute if score @s Ability_timer matches 1.. run effect give @s speed 1 4 true
#演出
    execute if score @s Ability_timer matches 1.. run particle block{block_state:"dirt"} ~ ~0.5 ~ 0.5 0 0.5 0 30
    execute if score @s Ability_timer matches 1.. run playsound item.shovel.flatten master @a ~ ~ ~ 1.0 1.5
#爆発処理
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run tag @s remove dirt_dive_skill
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run item modify entity @s armor.head sys:netherite_armor_head
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run item modify entity @s armor.chest sys:netherite_armor_chest
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run item modify entity @s armor.legs sys:netherite_armor_legs
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run item modify entity @s armor.feet sys:netherite_armor_feet
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run effect clear @s invisibility
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run item modify entity @s armor.chest sys:immunity
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run summon creeper ~ ~ ~ {ExplosionRadius:1,Fuse:0,NoAI:true}
#リセット
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run tag @s remove dirt_dive_skill
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run schedule function sys:player/hunter_skill/seven/skill/dirt_dive_end 10t
    execute if predicate sys:skill_end_dirt_dive if score @s Ability_timer matches 40.. run scoreboard players set @s Ability_timer 0