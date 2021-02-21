kill @e[type=minecraft:arrow]
clear @a
scoreboard players reset * kills
scoreboard players reset * arrows
scoreboard players reset * hit_shot
scoreboard players reset * shoot_bow
scoreboard players reset * dead
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
bossbar set syb:top_killer name {"translate":"syb.bossbar.top_killer.empty"}
bossbar set syb:top_killer visible false
bossbar set syb:top_killer value 0