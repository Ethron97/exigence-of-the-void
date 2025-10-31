# Called from activate_echo_nodes (which is called from game_on)
#   Call as echo nodes with tag ChosenEchoNode
#say I am activate

tag @s add Active
team join ActiveEcho @s

# Assign new echo id (highest + 1)
scoreboard players set #Highest game.node.echo.id 0
execute as @e[scores={game.node.echo.id=1..}] run scoreboard players operation #Highest game.node.echo.id > @s game.node.echo.id
scoreboard players operation @s game.node.echo.id = #Highest game.node.echo.id
scoreboard players add @s game.node.echo.id 1
execute store result storage exigence:echo_selection echo_id int 1 run scoreboard players get @s game.node.echo.id
execute store result storage exigence:echo_selection level int 1 run scoreboard players get @s ObjectLevel

# OLD
# Base ancient ember amount is calculated by how many Menace nodes are on the way
# -0.5 Menace nodes if there per movement item shortcut, maybe?
# "BaseEmberDrop" , modify +- on this
# Level 1 minumum is 6, so you can always buy something
# Level 2 minumum is probably 20
# Level 3 minumum is probably 40
# Level 4 minumum is probably 60

# Calculate
# Final embers = (#embers_to_drop * #embers_multiplier) / #temp
scoreboard players set #temp node.ember.embers_to_drop 100
scoreboard players set #min_embers node.ember.embers_to_drop 5
scoreboard players operation #embers_to_drop node.ember.embers_to_drop = @s BaseEmberDrop

execute store result score #embers_add node.ember.embers_to_drop run random value -25..25
#execute store result score #embers_remove node.ember.embers_to_drop run random value 0..25

scoreboard players set #embers_multiplier node.ember.embers_to_drop 100
scoreboard players operation #embers_multiplier node.ember.embers_to_drop += #embers_add node.ember.embers_to_drop
#scoreboard players operation #embers_multiplier node.ember.embers_to_drop -= #embers_remove node.ember.embers_to_drop

scoreboard players operation #embers_to_drop node.ember.embers_to_drop *= #embers_multiplier node.ember.embers_to_drop
scoreboard players operation #embers_to_drop node.ember.embers_to_drop /= #temp node.ember.embers_to_drop
scoreboard players operation @s node.ember.embers_to_drop = #embers_to_drop node.ember.embers_to_drop


# After clculations, set miniumum, so the player can always at least buy a void card.
scoreboard players operation @s node.ember.embers_to_drop > #min_embers node.ember.embers_to_drop

# If tutorial: always 10
execute if data storage exigence:dungeon {tutorial:1} run scoreboard players set @s node.ember.embers_to_drop 10

# If level 0, set the amount to 6 for consistent tutorial level
execute if score Difficulty DungeonRun matches 0 run scoreboard players set @s node.ember.embers_to_drop 5


# Summon echo:
function exigence:ember/node/summon_echo_item


# Spawn compass
function exigence:ember/node/create_echo_compass with storage exigence:echo_selection

#execute as @s run tellraw @a [{text:"Embers to drop: "},{"score":{"name":"@s","objective":"node.ember.embers_to_drop"}}]

# Increase "EchosRequired" so we know how many echos the player needs to escape
scoreboard players add EchosRequired DungeonRun 1
