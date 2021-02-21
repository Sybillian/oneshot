attribute @s minecraft:generic.attack_speed base set 40
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:armor_stand,tag=powerup]
tag @e[type=minecraft:area_effect_cloud] remove powerup_present
tag @a remove killer_1
tag @a remove killer_2
tag @a remove killer_3
clear @a
scoreboard players reset * kills
scoreboard players reset * arrows
scoreboard players reset * hit_shot
scoreboard players reset * shoot_bow
scoreboard players reset * dead
scoreboard players reset * leaderboard
scoreboard players set powerup_timer game_data 300
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
bossbar set syb:top_killer name {"translate":"syb.bossbar.top_killer.empty"}
bossbar set syb:top_killer visible false
bossbar set syb:top_killer value 0