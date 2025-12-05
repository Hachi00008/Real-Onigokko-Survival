#上空に起点となるマーカーを召喚
    summon marker ~ ~ ~ {Tags:[arrow_spread.anchor]}
    summon marker ~ ~ ~ {Tags:[arrow_spread.anchor]}
    summon marker ~ ~ ~ {Tags:[arrow_spread.anchor]}
    summon marker ~ ~ ~ {Tags:[arrow_spread.anchor]}
    summon marker ~ ~ ~ {Tags:[arrow_spread.anchor]}
    summon marker ~ ~ ~ {Tags:[arrow_spread.anchor]}
    summon marker ~ ~ ~ {Tags:[arrow_spread.anchor]}
    summon marker ~ ~ ~ {Tags:[arrow_spread.anchor]}
    summon marker ~ ~ ~ {Tags:[arrow_spread.anchor]}
    summon marker ~ ~ ~ {Tags:[arrow_spread.anchor]}

#マーカーを散開
    execute as @e[tag=arrow_spread.anchor] at @s run function sys:player/hunter_skill/four/spread