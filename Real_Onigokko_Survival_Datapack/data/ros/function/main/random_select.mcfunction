##鬼のランダム決め
#もし最大人数未満なら選択する
    execute if score $Hunter Wait_member_count < $Hunter Max_count run tag @r[team=!Hunter] add Select_hunter
    execute as @a[tag=Select_hunter] run team join Hunter @s
    execute as @a[tag=Select_hunter] run tellraw @a [{text:"| ",bold:true,color:"white"},{selector:"@s",bold:true,color:"red"},{text:"が鬼に選出されました |",bold:true,color:"white"}]
    tag @a remove Select_hunter
#現在の鬼の人数を確認
    execute store result score $Hunter Wait_member_count if entity @a[team=Hunter]
#現在の鬼の人数が最大人数未満ならもう一度実行
    execute if score $Hunter Wait_member_count < $Hunter Max_count run return run function ros:main/random_select
#最大人数と同じなら演出
    execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.0