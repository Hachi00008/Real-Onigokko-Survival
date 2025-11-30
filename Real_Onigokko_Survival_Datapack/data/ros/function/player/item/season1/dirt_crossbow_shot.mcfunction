##土のクロスボウを撃ったときの処理
#アイテム変更
    execute if predicate ros:has_dirt_crossbow_main run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick[item_model="crossbow",item_name={text:"土のクロスボウ",color:"gold",italic:false},enchantments={"ros:dirt_crossbow":1,unbreaking:10},custom_data={"dirt_crossbow":true}]
    execute if predicate ros:has_dirt_crossbow_off run item replace entity @s weapon.offhand with warped_fungus_on_a_stick[item_model="crossbow",item_name={text:"土のクロスボウ",color:"gold",italic:false},enchantments={"ros:dirt_crossbow":1,unbreaking:10},custom_data={"dirt_crossbow":true}]
#リセット
    advancement revoke @s only ros:system/item/season1/dirt_crossbow_shot