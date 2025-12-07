##伍ノ鬼指定
#チームの名前変更
    team modify Hunter prefix [{text:"伍ノ鬼"},{text:"\uF80F",font:"space"}]
#アイテム設定
    item replace entity @a[team=Hunter] armor.head with diamond_helmet[unbreakable={},enchantments={protection:3}]
    item replace entity @a[team=Hunter] armor.chest with diamond_chestplate[unbreakable={},enchantments={protection:3}]
    item replace entity @a[team=Hunter] armor.legs with diamond_leggings[unbreakable={},enchantments={projectile_protection:3}]
    item replace entity @a[team=Hunter] armor.feet with diamond_boots[unbreakable={},enchantments={protection:3}]
    item replace entity @a[team=Hunter] hotbar.0 with diamond_sword[unbreakable={},enchantments={sharpness:3}]
    item replace entity @a[team=Hunter] hotbar.1 with diamond_axe[unbreakable={},enchantments={efficiency:5}]
    item replace entity @a[team=Hunter] hotbar.2 with diamond_pickaxe[unbreakable={},enchantments={efficiency:5}]
    item replace entity @a[team=Hunter] hotbar.3 with diamond_shovel[unbreakable={},enchantments={efficiency:5}]
    item replace entity @a[team=Hunter] hotbar.4 with bow[unbreakable={},enchantment_glint_override=true]
    item replace entity @a[team=Hunter] hotbar.5 with cooked_beef[max_stack_size=99] 99
    item replace entity @a[team=Hunter] hotbar.6 with bedrock[max_stack_size=99] 99
    item replace entity @a[team=Hunter] hotbar.7 with bedrock[max_stack_size=99] 99
    give @a[team=Hunter] arrow 200
#属性変更
    execute as @a run attribute @s movement_speed modifier remove e2c117a2-e0d6-4caf-9228-117774c442c1
    execute as @a[team=Hunter] run attribute @s movement_speed modifier add e2c117a2-e0d6-4caf-9228-117774c442c1 0.005 add_value
#スコアを設定
    scoreboard players set @a[team=Hunter] Hunter_number 5
#中心にtp
    tp @a[team=Hunter] @e[tag=map_center,limit=1]