# Called when a full playthrough is won (by lighting all of the beacons)

#====================================================================================================

# TODO better announcements
say The beacons are lit, the Ardor return to destroy the Watchers!

# Set escape portal to 1 so that the game_win thinks the game actually won
scoreboard players set game.escape_portal game.state 1

# Turn the game off
execute in minecraft:overworld run function exigence:game/game_off
# Setup game room unload timer and expire, only if it is in EXALT mode
# TODO
# Unload game if all players who are online leave the Exalting
# Or if room times out
# Or if room expires

# Grayify sculk
function exigence:menace/private/transform_sculk {redify:2}

# Set time to day
time set 6000

# Create "try_exalting" function so if player was offline they can then be exalting when they join
# TODO move to by-player function
# Main title
title @a[tag=ActivePlayer] title {text:"Campaign Victory",color:"aqua"}
# Add tag "Exalting" or something
tag @a[tag=ActivePlayer] add Exalting
# Set dead players to adventure
execute as @a[scores={dead=2},tag=ActivePlayer] run function exigence:player/death/revive
# Give all players resistance/fire resistance/regen so they can't die (for simplicity)
effect give @a[tag=ActivePlayer] resistance infinite 4 true
effect give @a[tag=ActivePlayer] regeneration infinite 4 true
effect give @a[tag=ActivePlayer] fire_resistance infinite 0 true
effect give @a[tag=ActivePlayer] saturation infinite 4 true
# Give exalting players an exit button which ends the run fully, as if they had just won
give @a[tag=Exalting] minecraft:carrot_on_a_stick[custom_name=[{text:"Return to Hub",color:"aqua",italic:false}]]
# TODO advancement
# PREVENT DROPPING ITEMS

# TODO credit sequence
