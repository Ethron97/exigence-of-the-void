# If ember is queued, send it to ember droppers

# Increase ping scores
scoreboard players add @a[tag=ActivePlayer] profile.data.ember.cr.ember_ping 1

# Reduce EmberQueue by 1
scoreboard players remove ember.queue game.dungeon.temp 1

# Reset Random scores
execute as @e[type=minecraft:marker,tag=EmberNode] run scoreboard players set @s Random 0

# Same as coins, 1 Ember drop means an average of 1 ember on level 1, 2 on level 2 etc
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score game.difficulty game.state matches 1.. as @e[type=minecraft:marker,scores={node.property.object_level=1},tag=EmberNode,tag=Active,tag=!ChosenEchoNode] run execute as @s store result score @s Random run random value 1..30
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score game.difficulty game.state matches 2.. as @e[type=minecraft:marker,scores={node.property.object_level=2},tag=EmberNode,tag=Active,tag=!ChosenEchoNode] run execute as @s store result score @s Random run random value 1..30
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score game.difficulty game.state matches 3.. as @e[type=minecraft:marker,scores={node.property.object_level=3},tag=EmberNode,tag=Active,tag=!ChosenEchoNode] run execute as @s store result score @s Random run random value 1..30
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score game.difficulty game.state matches 4.. as @e[type=minecraft:marker,scores={node.property.object_level=4},tag=EmberNode,tag=Active,tag=!ChosenEchoNode] run execute as @s store result score @s Random run random value 1..22

execute if data storage exigence:dungeon_settings {stacked_embers:0} if score game.difficulty game.state matches 1.. as @e[type=minecraft:marker,scores={node.property.object_level=1},tag=EmberNode,tag=Active,tag=!ChosenEchoNode] run execute as @s store result score @s Random run random value 1..30
execute if data storage exigence:dungeon_settings {stacked_embers:0} if score game.difficulty game.state matches 2.. as @e[type=minecraft:marker,scores={node.property.object_level=2},tag=EmberNode,tag=Active,tag=!ChosenEchoNode] run execute as @s store result score @s Random run random value 1..15
execute if data storage exigence:dungeon_settings {stacked_embers:0} if score game.difficulty game.state matches 3.. as @e[type=minecraft:marker,scores={node.property.object_level=3},tag=EmberNode,tag=Active,tag=!ChosenEchoNode] run execute as @s store result score @s Random run random value 1..10
execute if data storage exigence:dungeon_settings {stacked_embers:0} if score game.difficulty game.state matches 4.. as @e[type=minecraft:marker,scores={node.property.object_level=4},tag=EmberNode,tag=Active,tag=!ChosenEchoNode] run execute as @s store result score @s Random run random value 1..5


# Each ember node that rolled a 1, summon an ember
execute as @e[type=minecraft:marker,scores={Random=1},tag=Active,tag=EmberNode,tag=!ChosenEchoNode] at @s run execute as @e[type=minecraft:marker,tag=TreasureNode,tag=Active,sort=nearest,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:ember/summon_ember"}
