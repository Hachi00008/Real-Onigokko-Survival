##空中飛行tick処理
#タグを付与
    tag @s add safe_fall
#スコアを増加させる
    scoreboard players add @s Ability_timer 1
#強さを指定
    scoreboard players set $strength hb.Motion 3000
#吹っ飛ばす
    execute if score @s Ability_timer matches 20.. if entity @s[x_rotation=80..90] run scoreboard players set $y hb.Motion -500
    execute if score @s Ability_timer matches 20.. if entity @s[x_rotation=80..90] run function p_motion:main/xyz
    execute if score @s Ability_timer matches 20.. unless entity @s[x_rotation=80..90] run function p_motion:main/looking
    execute if score @s Ability_timer matches 20.. unless entity @s[x_rotation=40..90] run effect give @s levitation 1 0 true
#演出
    execute if score @s Ability_timer matches 20.. run particle lava ~ ~ ~ 0 0 0 0.1 3
    execute if score @s Ability_timer matches 20.. run playsound item.firecharge.use master @a ~ ~ ~ 1.0 1.5
#着地するか時間切れなら終了処理
    execute if score @s Ability_timer matches 20.. if predicate sys:is_graund run setblock ~ ~ ~ lava
    execute if score @s Ability_timer matches 20.. if predicate sys:six_skill_end run tag @s remove six_fly_skill
    execute if score @s Ability_timer matches 20.. if predicate sys:six_skill_end run effect clear @s levitation
    execute if score @s Ability_timer matches 20.. if predicate sys:six_skill_end run scoreboard players set @s Ability_timer 0
#リセット
    scoreboard players set $strength hb.Motion 0
    scoreboard players set $y hb.Motion 0