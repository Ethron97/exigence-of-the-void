# In charge of distributing Wardens to various menace nodes around the map.
#   After placing each warden, the nearest 10 menace nodes are blacklisted so there is no (or very little) warden clump

# Clear tag that remembers which nodes have been Wardened
tag @e[type=minecraft:armor_stand,tag=MenaceNode,tag=Wardened] remove Wardened

# Distribute default 2 on level 3
execute if score Difficulty DungeonRun matches 3.. as @e[type=minecraft:warden,tag=L3] run function exigence:enemy/warden/distribute_warden {level:3}

# Distribute third that can appear on level 1-3
execute store result score #random Random run random value 1..3
execute if score Difficulty DungeonRun matches 3.. if score #random Random matches 1 as @e[type=minecraft:warden,name=Spite] run function exigence:enemy/warden/distribute_warden {level:1}
execute if score Difficulty DungeonRun matches 3.. if score #random Random matches 2 as @e[type=minecraft:warden,name=Spite] run function exigence:enemy/warden/distribute_warden {level:2}
execute if score Difficulty DungeonRun matches 3.. if score #random Random matches 3 as @e[type=minecraft:warden,name=Spite] run function exigence:enemy/warden/distribute_warden {level:3}

# If difficulty 4, distribute 4th that can appear on any level 1-3
execute store result score #random Random run random value 1..3
execute if score Difficulty DungeonRun matches 4.. if score #random Random matches 1 as @e[type=minecraft:warden,name=Rancor] run function exigence:enemy/warden/distribute_warden {level:1}
execute if score Difficulty DungeonRun matches 4.. if score #random Random matches 2 as @e[type=minecraft:warden,name=Rancor] run function exigence:enemy/warden/distribute_warden {level:2}
execute if score Difficulty DungeonRun matches 4.. if score #random Random matches 3 as @e[type=minecraft:warden,name=Rancor] run function exigence:enemy/warden/distribute_warden {level:3}

# Distribute level 4 wardens
execute if score Difficulty DungeonRun matches 4.. as @e[type=minecraft:warden,tag=L4] run function exigence:enemy/warden/distribute_warden {level:4}
