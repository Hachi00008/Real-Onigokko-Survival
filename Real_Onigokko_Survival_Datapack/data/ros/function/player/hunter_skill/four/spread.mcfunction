#移動幅を+-10で生成
    execute store result score @s arrow_spread.x_spread run random value -10..10
    execute store result score @s arrow_spread.z_spread run random value -10..10

#散開
    #現在の座標を取得
        execute store result score @s arrow_spread.x_pos run data get entity @s Pos[0]
        execute store result score @s arrow_spread.z_pos run data get entity @s Pos[2]

    #生成した移動幅を足す
        scoreboard players operation @s arrow_spread.x_pos += @s arrow_spread.x_spread
        scoreboard players operation @s arrow_spread.z_pos += @s arrow_spread.z_spread

    #実際の座標に適用
        execute store result entity @s Pos[0] double 1 run scoreboard players get @s arrow_spread.x_pos
        execute store result entity @s Pos[2] double 1 run scoreboard players get @s arrow_spread.z_pos

#矢を発射
    execute at @s run function ros:player/hunter_skill/four/shoot

#用済みなので消す
    kill @s