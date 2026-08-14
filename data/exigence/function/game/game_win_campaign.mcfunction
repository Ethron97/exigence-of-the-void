# Called when a full playthrough is won (by lighting all of the beacons)

#====================================================================================================

# TODO better announcements
say The beacons are lit, the Ardor return to destroy the Watchers!

# Set escape portal to 1 so that the game_win thinks the game actually won
scoreboard players set game.escape_portal game.state 1

# Turn the game off
# TODO change this, this force-closes the room
execute in minecraft:overworld run function exigence:game/game_off

# Kill all items
# TODO only in the game world
kill @e[type=minecraft:item]

# Grayify sculk
function exigence:menace/private/transform_sculk {redify:2}

# Kill all enemies
# TODO make ravagers friendly?
kill @e[type=#exigence:enemy]

# Set time to day
time set 6000

# Create "try_exalting" function so if player was offline they can then be exalting when they join
# TODO
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

# TODO credit sequence
