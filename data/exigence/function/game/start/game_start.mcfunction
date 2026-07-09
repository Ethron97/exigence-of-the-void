# Called when the load sequence finishes

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

scoreboard players set game.is_active game.state 1

# Play thunder sound as the player enters the dungeon
playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~1000 ~ 1000 1

# Post process cards
#   Setups up return/non-returning voids
#   Plays any instants that were NOT played during setup
#   Gives process_card scores to players
execute in minecraft:overworld as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,tag=Card] run function exigence:deck/process/private/post_process_card
## OBLIVION
execute if score mod.oblivion game.modifiers matches 1 run function exigence:cards/oblivion/trigger

# Initialize bossbar(s)
#   Trigger after final card processing so the deck bossbar initializes correctly
function exigence:bossbar/deck/initialize
function exigence:bossbar/deck/update_data

function exigence:bossbar/objective/initialize
function exigence:bossbar/objective/update_visibility

function exigence:bossbar/last_card/initialize

function exigence:bossbar/resource/initialize
function exigence:bossbar/resource/update_title

# Void cache
execute if score mod.void_cache game.modifiers matches 1.. if score game.difficulty game.state matches 4.. run function exigence:cards/void_cache/trigger
