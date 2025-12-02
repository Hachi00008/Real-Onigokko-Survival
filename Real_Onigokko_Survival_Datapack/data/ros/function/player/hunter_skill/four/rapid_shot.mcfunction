##連射の弓
#アイテム持ち替え
    execute if items entity @s weapon.mainhand crossbow run item modify entity @s weapon.mainhand [{function:"set_components",components:{charged_projectiles:[{id:"arrow"}]}}]
    execute if items entity @s weapon.offhand crossbow run item modify entity @s weapon.offhand [{function:"set_components",components:{charged_projectiles:[{id:"arrow"}]}}]
#リセット
    advancement revoke @s only ros:system/skill/four/rapid_shot