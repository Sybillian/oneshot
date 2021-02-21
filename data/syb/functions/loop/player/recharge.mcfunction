item entity @s weapon.offhand modify syb:bow/recharge
execute if score @s hit_shot matches 1 run function syb:trigger/player/hit_shot
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",tag:{Damage:0}}]}] run function syb:trigger/player/recharged