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