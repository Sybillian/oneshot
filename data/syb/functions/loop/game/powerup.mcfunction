execute as @s[y_rotation=0.1..180] at @s run tp @s ~ ~0.01 ~ ~3 ~
execute as @s[y_rotation=-180..0] at @s run tp @s ~ ~-0.01 ~ ~3 ~
execute if entity @a[tag=playing,tag=!has_powerup,distance=0..1,limit=1,sort=nearest] run function syb:trigger/game/give_powerup