##/reloadで実行
#スコアの初期化
    function ros:init/scoreboard
#チームの初期化
    function ros:init/team
#p_motionの初期化
    function p_motion:system/load
#実行完了
    tellraw @a [{text:"Reloaded!"}]