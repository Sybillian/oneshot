scoreboard players set @s dead 0
execute as @a[tag=playing] at @e[tag=spawn,limit=1,sort=random] run tp @s ~ ~ ~
attribute @s minecraft:generic.max_health modifier add 081b32ec-4076-4ff4-afc9-1c1761e00122 temp -18 add
effect give @s minecraft:instant_damage 1 0 true
effect give @s minecraft:health_boost 1 0 true
effect clear @s minecraft:health_boost
effect give @s minecraft:resistance 3 4 true
effect give @a minecraft:weakness 100000 9 true
item entity @s hotbar.8 replace minecraft:arrow 1