# Pick treasure node to drop key on
execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=2},tag=!L0,tag=!KeyDropper,tag=!KeyBlacklist,limit=1,sort=random] run function exigence:treasure/keys/private/drop_key_2

# Progress iteration
scoreboard players remove #i DungeonRun 1
execute if score #i DungeonRun matches 1.. run function exigence:treasure/keys/drop_temple_keys
