# Called when the load sequence finishes

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

scoreboard players set game.is_active game.state 1

# Play thunder sound as the player enters the dungeon
playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~1000 ~ 1000 1

# Initialize bossbar(s)
function exigence:bossbar/deck/initialize
function exigence:bossbar/deck/update_data
function exigence:bossbar/last_card/initialize
function exigence:bossbar/resource/initialize
function exigence:bossbar/objective/initialize
