##シーズン1に変更
#スコア変更
    scoreboard players set season Game 1
#ストレージ変更
    data modify storage ros:game season set value 1
#レシピの無効化
    #シーズン1の初期レシピ以外
        recipe take @a ros:season1/dirt_crossbow
        recipe take @a ros:season1/dirt_wall
        recipe take @a ros:season1/fast_pickaxe
        recipe take @a ros:season1/tp_ball
        recipe take @a ros:season1/grenade
#レシピの有効化
    recipe give @a ros:season1/king_sword
    recipe give @a ros:season1/leaf_armor
    recipe give @a ros:season1/zombiesteak
#メッセージ
    tellraw @a [{text:"シーズンが変更されました > Season1",bold:true,color:"white"}]
    execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.0