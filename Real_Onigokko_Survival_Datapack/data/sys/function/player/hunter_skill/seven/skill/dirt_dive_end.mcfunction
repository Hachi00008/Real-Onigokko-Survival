##土潜り終了処理
#エンチャント変更
    item modify entity @a[tag=dirt_dive_use] armor.chest sys:protection_enchant
#タグを付与
    tag @a[tag=dirt_dive_use] add safe_fall
#エフェクト削除
    effect clear @a[tag=dirt_dive_use] weakness
#アトリビュート変更
    execute as @a[tag=dirt_dive_use] run attribute @s jump_strength base reset
#タグを削除
    tag @a[tag=dirt_dive_use] remove dirt_dive_use