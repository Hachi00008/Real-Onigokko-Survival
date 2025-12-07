##/reloadで実行
#スコアの初期化
    function sys:init/scoreboard
#チームの初期化
    function sys:init/team
#p_motionの初期化
    function p_motion:system/load
#oh my datの初期化
    function oh_my_dat:sys/load
#実行完了
    tellraw @a [{text:"Reloaded!"}]