##スコの初期化
#スコアの作成
    #特殊スコア
        scoreboard objectives add right_click used:warped_fungus_on_a_stick
        scoreboard objectives add snowball_shot used:snowball
        scoreboard objectives add reward_book trigger
        scoreboard objectives add game_book trigger
        scoreboard objectives add number_book trigger
    #通常スコア
        scoreboard objectives add Game dummy
        scoreboard objectives add dirt_crossbow_charge dummy
        scoreboard objectives add entity_tick dummy
        scoreboard objectives add Temporary dummy
        scoreboard objectives add Wait_member_count dummy
        scoreboard objectives add Max_count dummy
        scoreboard objectives add Material_count dummy
        scoreboard objectives add Hunter_number dummy
        scoreboard objectives add Ability_timer dummy
        scoreboard objectives add Cooltime dummy
        scoreboard objectives add arrow_spread.x_spread dummy
        scoreboard objectives add arrow_spread.z_spread dummy
        scoreboard objectives add arrow_spread.x_pos dummy
        scoreboard objectives add arrow_spread.z_pos dummy
#スコアの変更
#クールタイムの付与
    scoreboard players add @a Cooltime 0