##テレポート玉のtp処理
#タグ付け
    tag @s add tp_ball_use
#近くのプレイヤーにtp
    tp @s @r[tag=!tp_ball_use]
#タグを外す
    tag @s remove tp_ball_use
#リセット
    advancement revoke @s only sys:system/item/season1/tp_ball_use