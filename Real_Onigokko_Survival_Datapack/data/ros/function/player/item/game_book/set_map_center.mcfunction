##マップの中心を設定する
#ブロックを消す
    execute at @e[tag=map_center] run fill ~1 ~-1 ~1 ~-1 ~2 ~-1 air
    kill @e[tag=map_center]
#ブロックの配置
    fill ~1 ~ ~1 ~-1 ~ ~-1 bedrock
    fill ~1 ~1 ~1 ~-1 ~1 ~-1 iron_bars
    fill ~1 ~2 ~1 ~-1 ~2 ~-1 iron_bars
    fill ~ ~1 ~ ~ ~2 ~ air
    fill ~1 ~3 ~1 ~-1 ~3 ~-1 bedrock
#アマスタ召喚
    execute align xz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~1 ~ {Tags:[map_center],Marker:true}
#演出
    playsound entity.experience_orb.pickup master @a
#ボーダー設定
    execute at @e[tag=map_center] run worldborder center ~ ~
    worldborder set 500
#リセット
    scoreboard players reset @s game_book
    scoreboard players enable @s game_book