##クロスボウのチャージ
#手にクロスボウを持っているならスコアを増やす
    execute if predicate sys:has_dirt_crossbow run tag @s add crossbow_charge
    execute if predicate sys:has_dirt_crossbow run scoreboard players add @s dirt_crossbow_charge 1
#スコアごとの処理
    execute if score @s dirt_crossbow_charge matches 2.. run attribute @s movement_speed modifier add af68d8f1-2daa-4c66-b0af-8a1a8a34cd2b -0.07 add_value
    execute if score @s dirt_crossbow_charge matches 2 run playsound item.crossbow.loading_start master @s
    execute if score @s dirt_crossbow_charge matches 10 run playsound item.crossbow.loading_middle master @s
    execute if score @s dirt_crossbow_charge matches 60 run playsound item.crossbow.loading_end master @s
    execute if score @s dirt_crossbow_charge matches 60.. run clear @s dirt 1
    execute if score @s dirt_crossbow_charge matches 60.. if predicate sys:has_dirt_crossbow_main run item replace entity @s weapon.mainhand with crossbow[enchantments={"sys:dirt_crossbow":1,unbreaking:10},item_name={text:"土のクロスボウ",color:gold,italic:false},charged_projectiles=[{id:"dirt",count:1},{id:"dirt",count:1},{id:"dirt",count:1}],custom_data={dirt_crossbow:true},tooltip_display={hidden_components:["charged_projectiles"]}]
    execute if score @s dirt_crossbow_charge matches 60.. if predicate sys:has_dirt_crossbow_off run item replace entity @s weapon.offhand with crossbow[enchantments={"sys:dirt_crossbow":1,unbreaking:10},item_name={text:"土のクロスボウ",color:gold,italic:false},charged_projectiles=[{id:"dirt",count:1},{id:"dirt",count:1},{id:"dirt",count:1}],custom_data={dirt_crossbow:true},tooltip_display={hidden_components:["charged_projectiles"]}]
    execute if score @s dirt_crossbow_charge matches 60.. run attribute @s movement_speed modifier remove af68d8f1-2daa-4c66-b0af-8a1a8a34cd2b
    execute if score @s dirt_crossbow_charge matches 60.. run tag @s remove crossbow_charge
    execute if score @s dirt_crossbow_charge matches 60.. run scoreboard players set @s dirt_crossbow_charge 0
#手に未チャージのクロスボウを持っていないならリセット
    execute unless predicate sys:has_dirt_crossbow run scoreboard players set @s dirt_crossbow_charge 0
    execute unless predicate sys:has_dirt_crossbow run tag @s remove crossbow_charge
    execute unless predicate sys:has_dirt_crossbow run attribute @s movement_speed modifier remove af68d8f1-2daa-4c66-b0af-8a1a8a34cd2b