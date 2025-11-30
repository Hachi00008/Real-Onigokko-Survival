##シーズン2に変更
#スコア変更
    scoreboard players set season Game 2
#ストレージ変更
    data modify storage ros:game season set value 2
#レシピの無効化
    #シーズン1のレシピ
        recipe take @a ros:season1/dirt_crossbow
        recipe take @a ros:season1/dirt_wall
        recipe take @a ros:season1/fast_pickaxe
        recipe take @a ros:season1/tp_ball
        recipe take @a ros:season1/grenade
        recipe take @a ros:season1/king_sword
        recipe take @a ros:season1/leaf_armor
        recipe take @a ros:season1/zombiesteak
#メッセージ
    tellraw @a [{text:"シーズンが変更されました > Season2",bold:true,color:"white"}]
    execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.0