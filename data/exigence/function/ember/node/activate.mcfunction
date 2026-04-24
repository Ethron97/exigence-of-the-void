# Called from activate_echo_nodes (which is called from loading sequence)

## CONSTRAINTS
#   AS echo node (ChosenEchoNode)

#====================================================================================================

#say (D3) I am activate

tag @s add Active
execute at @s run team join ActiveEcho @n[type=minecraft:block_display,tag=EchoDebugDisplay,distance=..3]

# Assign new echo id (highest + 1)
scoreboard players add #next game.node.echo.id 1
scoreboard players operation @s game.node.echo.id = #next game.node.echo.id
execute store result storage exigence:echo_selection echo_id int 1 run scoreboard players get @s game.node.echo.id
execute store result storage exigence:echo_selection level int 1 run scoreboard players get @s node.property.object_level

# Refresh base ember drop
function exigence:ember/setup/ember_drops/set

# Calculate
# Final embers = (#embers_to_drop * #embers_multiplier) / #temp
scoreboard players set #temp node.ember.embers_to_drop 100
scoreboard players operation #embers_to_drop node.ember.embers_to_drop = @s node.echo.base_ember_drop

execute store result score #embers_add node.ember.embers_to_drop run random value -25..25
#execute store result score #embers_remove node.ember.embers_to_drop run random value 0..25

scoreboard players set #embers_multiplier node.ember.embers_to_drop 100
scoreboard players operation #embers_multiplier node.ember.embers_to_drop += #embers_add node.ember.embers_to_drop
#scoreboard players operation #embers_multiplier node.ember.embers_to_drop -= #embers_remove node.ember.embers_to_drop

scoreboard players operation #embers_to_drop node.ember.embers_to_drop *= #embers_multiplier node.ember.embers_to_drop
scoreboard players operation #embers_to_drop node.ember.embers_to_drop /= #temp node.ember.embers_to_drop
scoreboard players operation @s node.ember.embers_to_drop = #embers_to_drop node.ember.embers_to_drop


# After clculations, set miniumum, so the player can always at least buy a void card.
scoreboard players operation @s node.ember.embers_to_drop > 5 number

# Summon echo:
execute at @s run function exigence:ember/node/summon_echo_item

# Spawn compass
function exigence:ember/node/create_echo_compass with storage exigence:echo_selection

#execute as @s run tellraw @a [{text:"Embers to drop: "},{"score":{"name":"@s","objective":"node.ember.embers_to_drop"}}]

# Increase "EchosRequired" so we know how many echos the player needs to escape
scoreboard players add .echos_required game.dungeon.echo 1
