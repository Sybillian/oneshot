scoreboard players set powerup_timer game_data 200
tag @e[type=minecraft:area_effect_cloud,tag=spawn_powerup,tag=!powerup_present,limit=1,sort=random] add spawning
tag @e[type=minecraft:area_effect_cloud,tag=spawning] add powerup_present
execute at @e[type=minecraft:area_effect_cloud,tag=spawn_powerup,tag=spawning] run summon armor_stand ~ ~ ~ {Tags:["powerup"],Marker:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}}]}
tag @e[type=minecraft:area_effect_cloud,tag=spawn_powerup,tag=spawning] remove spawning