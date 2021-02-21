item entity @a[tag=playing,tag=!has_powerup,distance=0..1,limit=1,sort=nearest] hotbar.0 replace minecraft:crossbow{display:{Name:'{"text":"Multishot Crossbow"}'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b}],Charged:1b}
tag @a[tag=playing,tag=!has_powerup,distance=0..1,limit=1,sort=nearest] add has_powerup
tag @e[type=minecraft:area_effect_cloud,tag=spawn_powerup,tag=powerup_present,limit=1,sort=nearest] remove powerup_present
kill @s