# If ember is queued, send it to ember droppers

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Increase ping scores
scoreboard players add @a[tag=ActivePlayer] profile.data.ember.cr.ember_ping 1

# Reduce EmberQueue by 1
scoreboard players remove ember.queue game.dungeon.temp 1

# Calculate drop chance
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=TreasureNode,tag=Active] run function exigence:treasure/node/ember/ember_drop_chance



## OLD
# Same as coins, 1 Ember drop means an average of 1 ember on level 1, 2 on level 2 etc
#execute if data storage exigence:dungeon_settings {stacked_embers:1} if score game.difficulty game.state matches 1.. as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=TreasureNode,tag=Active] run execute as @s store result score @s Random run random value 1..30
#execute if data storage exigence:dungeon_settings {stacked_embers:1} if score game.difficulty game.state matches 2.. as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=TreasureNode,tag=Active] run execute as @s store result score @s Random run random value 1..30
#execute if data storage exigence:dungeon_settings {stacked_embers:1} if score game.difficulty game.state matches 3.. as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=TreasureNode,tag=Active] run execute as @s store result score @s Random run random value 1..30
#execute if data storage exigence:dungeon_settings {stacked_embers:1} if score game.difficulty game.state matches 4.. as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,tag=Active] run execute as @s store result score @s Random run random value 1..22

#execute if data storage exigence:dungeon_settings {stacked_embers:0} if score game.difficulty game.state matches 1.. as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=TreasureNode,tag=Active] run execute as @s store result score @s Random run random value 1..30
#execute if data storage exigence:dungeon_settings {stacked_embers:0} if score game.difficulty game.state matches 2.. as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=TreasureNode,tag=Active] run execute as @s store result score @s Random run random value 1..15
#execute if data storage exigence:dungeon_settings {stacked_embers:0} if score game.difficulty game.state matches 3.. as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=TreasureNode,tag=Active] run execute as @s store result score @s Random run random value 1..10
#execute if data storage exigence:dungeon_settings {stacked_embers:0} if score game.difficulty game.state matches 4.. as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,tag=Active] run execute as @s store result score @s Random run random value 1..5

# Each node that rolled a 1, summon an ember
#execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={Random=1},tag=TreasureNode,tag=Active] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:ember/summon_ember"}

## OLD
# Was dropping starting from echo node, then at nearest treasure node. Caused unbalanced drop distributions; Some treasude nodes
# got ignore while others got double teamed. Just make it even
# Each ember node that rolled a 1, summon an ember
#execute as @e[type=minecraft:marker,scores={Random=1},tag=Active,tag=EmberNode] at @s run execute as @n[type=minecraft:marker,tag=TreasureNode,tag=Active] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:ember/summon_ember"}
