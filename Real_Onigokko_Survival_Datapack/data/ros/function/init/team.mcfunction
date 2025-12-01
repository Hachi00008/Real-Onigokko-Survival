#チームの初期化
#チームの作成
    team add Hunter
    team add Surviver
#チームの設定
    #鬼
        team modify Hunter collisionRule always
        team modify Hunter color white
        team modify Hunter deathMessageVisibility never
        team modify Hunter friendlyFire false
        team modify Hunter nametagVisibility always
        team modify Hunter seeFriendlyInvisibles true
    #逃走者
        team modify Surviver collisionRule always
        team modify Surviver color white
        team modify Surviver deathMessageVisibility never
        team modify Surviver friendlyFire false
        team modify Surviver nametagVisibility always
        team modify Surviver seeFriendlyInvisibles true