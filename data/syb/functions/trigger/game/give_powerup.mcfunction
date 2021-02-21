item entity @a[tag=playing,tag=!has_powerup,distance=0..1,limit=1,sort=nearest] hotbar.0 replace minecraft:crossbow{display:{Name:'{"text":"Multishot Crossbow"}'},ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b}],Charged:1b}
tag @a[tag=playing,tag=!has_powerup,distance=0..1,limit=1,sort=nearest] add has_powerup
kill @s