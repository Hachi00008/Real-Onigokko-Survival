##エンチャントリンゴを使用したときの処理
#逃走者全員にエフェクト付与
    effect give @a[team=Surviver] regeneration 15 1
    effect give @a[team=Surviver] speed 15 1
#リセット
    advancement revoke @s only ros:system/item/season2/enchant_apple_use