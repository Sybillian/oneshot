execute as @a[tag=playing] run function syb:loop/player/playing

kill @e[type=minecraft:arrow,nbt={inGround:1b}]

## Leaderboard
tag @a[tag=killer_1] remove killer_1
tag @a[tag=killer_2] remove killer_2
tag @a[tag=killer_3] remove killer_3

scoreboard players set kill_calc math -2147483648
scoreboard players operation kill_calc math > @a kills
execute as @a[tag=playing] if score @s kills = kill_calc math run tag @s add killer_1

scoreboard players set kill_calc math -2147483648
scoreboard players operation kill_calc math > @a kills
execute as @a[tag=playing,tag=!killer_1] if score @s kills = kill_calc math run tag @s add killer_2

scoreboard players set kill_calc math -2147483648
scoreboard players operation kill_calc math > @a kills
execute as @a[tag=playing,tag=!killer_1,tag=!killer_2] if score @s kills = kill_calc math run tag @s add killer_3

execute as @a[tag=killer_1] run scoreboard players operation @s leaderboard = @s kills
execute as @a[tag=killer_2] run scoreboard players operation @s leaderboard = @s kills
execute as @a[tag=killer_3] run scoreboard players operation @s leaderboard = @s kills

## Powerups
execute as @e[type=minecraft:armor_stand,tag=powerup,y_rotation=0.1..180] at @s run tp @s ~ ~0.01 ~ ~3 ~
execute as @e[type=minecraft:armor_stand,tag=powerup,y_rotation=-180..0] at @s run tp @s ~ ~-0.01 ~ ~3 ~
execute as @e[type=minecraft:armor_stand,tag=powerup] at @s if entity @a[tag=playing,tag=!has_powerup,distance=0..1,limit=1,sort=nearest] run function syb:trigger/game/give_powerup
scoreboard players remove powerup_timer game_data 1
execute if score powerup_timer game_data matches ..0 run function syb:trigger/game/spawn_powerup