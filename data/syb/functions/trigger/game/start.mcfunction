tag @a add playing
team join players @a
execute as @a[tag=playing] at @e[tag=spawn,limit=1,sort=random] run tp @s ~ ~ ~
execute as @a run attribute @s minecraft:generic.max_health base set 2
attribute @s minecraft:generic.attack_speed base set 40
effect give @a minecraft:weakness 100000 9 true
scoreboard objectives setdisplay sidebar leaderboard
scoreboard objectives setdisplay list kills
bossbar set syb:top_killer name {"translate":"syb.bossbar.top_killer.empty"}
bossbar set syb:top_killer players @a
bossbar set syb:top_killer visible true
bossbar set syb:top_killer value 0

item entity @s weapon.offhand copy entity @s enderchest.0
item entity @a[tag=playing] hotbar.8 replace minecraft:arrow 1

scoreboard players set game_active game_data 1
schedule function syb:trigger/player/update_health 1s