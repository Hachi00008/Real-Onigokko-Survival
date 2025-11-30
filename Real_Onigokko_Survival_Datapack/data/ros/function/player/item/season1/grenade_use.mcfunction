##グレネード
#検知用のマーカー召喚
    summon marker ~ ~ ~ {Tags:["grenade_check","tick","grenade_init"]}
#雪玉に乗せる
    ride @n[tag=grenade_init] mount @s
#タグを外す
    tag @s remove grenade_init