execute as @a run title @s actionbar [{"text":"Your Kills: ","color":"dark_red","bold":"true"},{"score":{"name":"@s","objective":"kills"},"color":"gold"}]

execute if score @s shoot_bow matches 1.. run function syb:trigger/player/shot_bow
execute if entity @s[tag=recharging] run function syb:loop/player/recharge
tag @s remove top_killer

scoreboard players set top_score math -2147483648
scoreboard players operation top_score math > @a kills
execute as @a if score @s kills = top_score math run tag @s add top_killer
execute if entity @s[tag=top_killer] store result bossbar syb:top_killer value run scoreboard players get @s kills
execute if entity @s[tag=top_killer] run bossbar set syb:top_killer name {"translate":"syb.bossbar.top_killer","with":[{"selector":"@s"},{"score":{"name":"@s","objective":"kills"}}]}

execute if score @s kills matches 20 run function syb:trigger/game/end

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run item entity @s enderchest.0 copy entity @s weapon.offhand
execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run clear @s minecraft:bow
execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] run item entity @s weapon.offhand copy entity @s enderchest.0

execute if score @s dead matches 1 run function syb:trigger/player/respawn

execute if entity @s[tag=has_powerup] run function syb:loop/player/has_powerup