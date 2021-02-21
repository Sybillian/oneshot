title @a subtitle [{"selector":"@a[tag=top_killer]","color":"green"},{"text":" "},{"text":"won!","color":"green"}]
title @a title {"text":"Game Over!","color":"yellow"}
clear @a
tag @a remove recharging
tag @a remove playing
team join lobby @a
gamemode adventure @a
tp @a 0 93 0
effect give @a minecraft:weakness 100000 9 true
scoreboard players set game_active game_data 0

schedule function syb:trigger/game/reset 3s