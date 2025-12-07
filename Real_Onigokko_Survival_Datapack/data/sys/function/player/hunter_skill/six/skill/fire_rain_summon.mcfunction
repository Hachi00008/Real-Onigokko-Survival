##炎の雨
#中心となるアマスタを召喚
    summon armor_stand ~ ~ ~ {Tags:["tick","six_rain_skill"],Marker:true,Invisible:true}
#四体のアマスタを召喚
    summon armor_stand ~ ~ ~ {Tags:["fire_rain"],Marker:true,Invisible:true}
    summon armor_stand ~ ~ ~ {Tags:["fire_rain"],Marker:true,Invisible:true}
#演出
    playsound item.firecharge.use master @a ~ ~ ~ 1.0 0.7
#クールタイムを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[2].skill set value 3
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CoolTime[2].time set value 2400