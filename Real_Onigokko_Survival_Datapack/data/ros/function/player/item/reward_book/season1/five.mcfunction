##参ノ鬼討伐報酬
#レシピロック
    recipe take @a ros:season1/dirt_crossbow
    recipe take @a ros:season1/dirt_wall
#レシピ解除
    function ros:player/item/reward_book/season1/three
    recipe give @a ros:season1/tp_ball
#演出
    tellraw @s [{text:"討伐報酬を解除しました"}]