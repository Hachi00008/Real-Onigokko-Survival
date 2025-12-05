##物資を召喚する
#アマスタ召喚
    execute if score $now Material_count < $max Material_count run summon armor_stand ~ ~ ~ {Tags:["material_summon"]}
#スコアを増加させる
    execute if score $now Material_count < $max Material_count run scoreboard players add $now Material_count 1
#スコアが同じになるまで再帰
    execute if score $now Material_count < $max Material_count run function sys:player/item/game_book/rec