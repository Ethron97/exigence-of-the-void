# Chosen-echo specific functionality

## CONSTRAINTS
#   AS/AT EchoNode (ChosenEchoNode)

#==========================================================================================================

# Spawn cake based on EchoCake
execute if score EchoCake Modifiers matches 1.. run function exigence:cards/tasty_surprise/try_spawn_cake
execute if score EchoCake Modifiers matches 2.. run function exigence:cards/tasty_surprise/try_spawn_cake
execute if score EchoCake Modifiers matches 3.. run function exigence:cards/tasty_surprise/try_spawn_cake

# If player has not disabled echo win tracking, add 1 to EchoTimesChosen
execute unless entity @a[tag=ActivePlayer,scores={s_disableEchoWinTracking=1}] run scoreboard players add @s EchoTimesChosen 1

# Setblock above echonodes to light
setblock ~ ~1 ~ light

# Spawn embers
execute if score @s EmbersToDrop matches 1.. run function exigence:ember/echo_embers/drop_embers

# Set waypoint information
waypoint modify @s style set minecraft:default
attribute @s waypoint_transmit_range base set 10000
