# If ember is queued, send it to ember droppers

# Increase ping scores
scoreboard players add @a[tag=ActivePlayer] profile.data.ember.cr.ember_ping 1

# Reduce EmberQueue by 1
scoreboard players remove EmberQueue DungeonRun 1

# Reset Random scores
execute as @e[type=minecraft:armor_stand,tag=EmberNode] run scoreboard players set @s Random 0

# Same as coins, 1 Ember drop means an average of 1 ember on level 1, 2 on level 2 etc
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score Difficulty DungeonRun matches 1.. as @e[type=minecraft:armor_stand,tag=EmberNode,tag=Active,tag=!ChosenEchoNode,scores={ObjectLevel=1}] run execute as @s store result score @s Random run random value 1..30
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score Difficulty DungeonRun matches 2.. as @e[type=minecraft:armor_stand,tag=EmberNode,tag=Active,tag=!ChosenEchoNode,scores={ObjectLevel=2}] run execute as @s store result score @s Random run random value 1..30
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score Difficulty DungeonRun matches 3.. as @e[type=minecraft:armor_stand,tag=EmberNode,tag=Active,tag=!ChosenEchoNode,scores={ObjectLevel=3}] run execute as @s store result score @s Random run random value 1..30
execute if data storage exigence:dungeon_settings {stacked_embers:1} if score Difficulty DungeonRun matches 4.. as @e[type=minecraft:armor_stand,tag=EmberNode,tag=Active,tag=!ChosenEchoNode,scores={ObjectLevel=4}] run execute as @s store result score @s Random run random value 1..22

execute if data storage exigence:dungeon_settings {stacked_embers:0} if score Difficulty DungeonRun matches 1.. as @e[type=minecraft:armor_stand,tag=EmberNode,tag=Active,tag=!ChosenEchoNode,scores={ObjectLevel=1}] run execute as @s store result score @s Random run random value 1..30
execute if data storage exigence:dungeon_settings {stacked_embers:0} if score Difficulty DungeonRun matches 2.. as @e[type=minecraft:armor_stand,tag=EmberNode,tag=Active,tag=!ChosenEchoNode,scores={ObjectLevel=2}] run execute as @s store result score @s Random run random value 1..15
execute if data storage exigence:dungeon_settings {stacked_embers:0} if score Difficulty DungeonRun matches 3.. as @e[type=minecraft:armor_stand,tag=EmberNode,tag=Active,tag=!ChosenEchoNode,scores={ObjectLevel=3}] run execute as @s store result score @s Random run random value 1..10
execute if data storage exigence:dungeon_settings {stacked_embers:0} if score Difficulty DungeonRun matches 4.. as @e[type=minecraft:armor_stand,tag=EmberNode,tag=Active,tag=!ChosenEchoNode,scores={ObjectLevel=4}] run execute as @s store result score @s Random run random value 1..5


# Each ember node that rolled a 1, summon an ember
execute as @e[type=minecraft:armor_stand,tag=Active,tag=EmberNode,scores={Random=1},tag=!ChosenEchoNode] at @s run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,tag=Active,sort=nearest,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:ember/summon_ember"}
