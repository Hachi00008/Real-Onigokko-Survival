##参ノ鬼討伐報酬
#レシピロック
    recipe take @a sys:season1/dirt_crossbow
    recipe take @a sys:season1/dirt_wall
#レシピ解除
    function sys:player/item/reward_book/season1/three
    recipe give @a sys:season1/tp_ball
#演出
    tellraw @s [{text:"討伐報酬を解除しました"}]