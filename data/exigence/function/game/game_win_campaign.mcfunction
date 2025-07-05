# Called when a full playthrough is won (by lighting all of the beacons)

# Set escape portal to 1 so that the game_win thinks the game actually won
data modify storage exigence:dungeon escape_portal set value 1

# Add tag "Exalting" or something
tag @a[tag=ActivePlayer] add Exalting

# Turn the game off
function exigence:game/game_off

# Kill all items
kill @e[type=item]

say The beacons are lit, the Ardor return to destroy the Watchers!

# Grayify sculk
function exigence:menace/private/transform_sculk {redify:2}

# Main title
title @a[tag=ActivePlayer] title {text:"Campaign Victory",color:"aqua"}

# Kill all enemies
kill @e[type=#exigence:enemy]


# Set time to day
time set 6000

# Set dead players to adventure
execute as @a[tag=ActivePlayer,scores={dead=2}] run function exigence:player/death/revive

# Give all players resistance/fire resistance/regen so they can't die (for simplicity)
effect give @a[tag=ActivePlayer] resistance infinite 4 true
effect give @a[tag=ActivePlayer] regeneration infinite 4 true
effect give @a[tag=ActivePlayer] fire_resistance infinite 0 true


# Give exalting players an exit button which ends the run fully, as if they had just won
give @a[tag=Exalting] minecraft:carrot_on_a_stick[custom_name=[{text:"Return to Hub",color:"aqua",italic:false}]]
