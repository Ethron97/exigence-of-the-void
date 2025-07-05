# Load tutorial
#   Call as player
say Load tutorial


# PLAYER:
function exigence:game/game_reset/reset_scores
function exigence:game/game_reset/reset_teams
function exigence:game/game_reset/reset_advancements
tag @s add Tutorial

# Reset carrot score
scoreboard players set @s CarrotOnStick 0
# set gamemode
gamemode adventure @s

# Give "exit" button
give @s minecraft:carrot_on_a_stick[custom_name=[{text:"Exit Tutorial",color:"red",italic:false}]]

# Setup echo
function exigence:tutorial/setup/echo_node

# Spawn enemies
function exigence:tutorial/setup/spawn_enemies

# Berries
function exigence:tutorial/setup/berry_nodes

# Altar
function exigence:tutorial/setup/altar

# Bell
function exigence:tutorial/setup/bell
