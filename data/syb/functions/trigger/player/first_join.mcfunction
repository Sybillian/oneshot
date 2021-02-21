attribute @s minecraft:generic.max_health base set 2
attribute @s minecraft:generic.attack_speed base set 40
effect give @s minecraft:weakness 100000 9 true
team join lobby @s
gamemode adventure @s
tp @s 0 93 0
schedule function syb:trigger/player/update_health 1s