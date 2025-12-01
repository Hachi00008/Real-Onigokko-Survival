##参ノ鬼討伐報酬
#レシピ解除
    function ros:player/item/reward_book/season1/five
    recipe give @a ros:season1/dirt_crossbow
    recipe give @a ros:season1/dirt_wall
#演出
    tellraw @s [{text:"討伐報酬を解除しました"}]