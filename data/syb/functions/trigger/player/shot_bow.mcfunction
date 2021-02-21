scoreboard players set @s shoot_bow 0
item entity @s weapon.offhand modify syb:bow/empty
tag @s add recharging
function syb:trigger/player/index_arrows