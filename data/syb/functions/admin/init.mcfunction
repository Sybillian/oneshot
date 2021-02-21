###
# Run by the game when the datapack is reloaded. Initializes scoreboard
# objectives and ensures that the datapack is properly configured.
###

## World setup
time set 6000t
difficulty peaceful
defaultgamemode adventure
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule keepInventory true
gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 0
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule randomTickSpeed 0
gamerule reducedDebugInfo true
# change this one
gamerule sendCommandFeedback true
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false

## Scoreboard objectives
scoreboard objectives add math dummy
scoreboard objectives add shoot_bow minecraft.used:minecraft.bow
scoreboard objectives add shoot_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add hit_shot minecraft.custom:minecraft.player_kills
scoreboard objectives add kills minecraft.custom:minecraft.player_kills
scoreboard objectives add dead minecraft.custom:minecraft.deaths
scoreboard objectives add arrows dummy
scoreboard objectives add game_data dummy
scoreboard objectives add leaderboard dummy {"text":"Top Killers","color":"green","bold":"true"}

scoreboard objectives setdisplay sidebar leaderboard

scoreboard players set game_active game_data 0
scoreboard players set powerup_timer game_data 200

team add players
team modify players color green
team modify players nametagVisibility hideForOwnTeam

team add spec
team modify spec color gray
team modify spec nametagVisibility hideForOtherTeams

team add lobby
team modify lobby color yellow
team modify lobby nametagVisibility hideForOtherTeams

## Bossbars
bossbar add syb:top_killer {"translate":"syb.bossbar.top_killer.empty"}
bossbar set syb:top_killer name {"translate":"syb.bossbar.top_killer.empty"}
bossbar set syb:top_killer color red
bossbar set syb:top_killer players @a
bossbar set syb:top_killer max 20
bossbar set syb:top_killer value 0
bossbar set syb:top_killer style notched_20