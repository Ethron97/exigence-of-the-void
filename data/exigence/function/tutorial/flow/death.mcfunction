# Called when player dies in the tutorial

## CONSTRAINTS
#   AS player

#=============================================================================================================

# DEBUG
say Tutorial Deathed
effect give @s night_vision infinite 0 true

# Reset scores
function exigence:game/game_reset/reset_player_scores


# Save fallback
execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback] run tag @s add SuperFallback
# Reset tutorial
function exigence:tutorial/reset
# Restore fallback
execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=SuperFallback] run tag @s add Fallback
execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=SuperFallback] run tag @s remove SuperFallback

clear @s

# set step to fallback
scoreboard players operation Step Tutorial = Fallback Tutorial

# Reset all dropped/fallback tags
tag @n[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback] add LastDropped
scoreboard players operation #compare TutorialMarkerID = @n[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback] TutorialMarkerID
execute as @e[distance=..1000,type=marker,tag=TutorialMarker] if score @s TutorialMarkerID <= #compare TutorialMarkerID run tag @s add Dropped


# Restart chain
function exigence:tutorial/flow/next_token

bossbar set exigence:tutorial name {text:"",color:"green",italic:false}
bossbar set exigence:tutorial value 0

tellraw @s [{text:"-> Try again!",color:"green"}]
