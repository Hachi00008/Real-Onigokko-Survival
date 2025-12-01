##マクロで記入されたUUIDの人を鬼にする
#
    $execute if score $Hunter Wait_member_count < $Hunter Max_count run tag $(player) add Select_hunter
    execute as @a[tag=Select_hunter] run team join Hunter @s
    execute as @a[tag=Select_hunter] run tellraw @a [{text:"| ",bold:true,color:"white"},{selector:"@s",bold:true,color:"red"},{text:"が鬼に選出されました |",bold:true,color:"white"}]
    tag @a remove Select_hunter
#現在の鬼の人数を確認
    execute store result score $Hunter Wait_member_count if entity @a[team=Hunter]
#現在の鬼の人数が最大人数未満ならもう一度実行
    execute if score $Hunter Wait_member_count < $Hunter Max_count run tellraw @s [{text:"| 鬼が最大人数に達していません |",bold:true,color:"red"}]
#演出
    execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1.0 1.0