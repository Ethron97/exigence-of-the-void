# Use predicates to narrow down the correct mirror node

## CONSTRAINTS
#   AS player

#====================================================================================================

# DEBUG
execute if score toggle.mirror debug matches 1 if score debug.level debug matches 5.. run say (D5) Get active mirror

# Select active mirrornode from nominate, if player is within the specific box for that mirror node
execute if predicate exigence:mirror/stairs run return run tag @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Stairs,tag=Nominate,distance=..30] add Active

# Tunnel mirror parkours:
execute if predicate exigence:mirror/3wide run return run tag @e[type=minecraft:armor_stand,tag=MirrorNode,tag=3wide,tag=Nominate,distance=..30] add Active
execute if predicate exigence:mirror/4wide run return run tag @e[type=minecraft:armor_stand,tag=MirrorNode,tag=4wide,tag=Nominate,distance=..30] add Active
execute if predicate exigence:mirror/3way run return run tag @e[type=minecraft:armor_stand,tag=MirrorNode,tag=3way,tag=Nominate,distance=..30] add Active
execute if predicate exigence:mirror/45d run return run tag @e[type=minecraft:armor_stand,tag=MirrorNode,tag=45d,tag=Nominate,distance=..30] add Active

# Laboratory
execute if predicate exigence:mirror/lower_left run return run tag @e[type=minecraft:armor_stand,tag=MirrorNode,tag=LowerLeft,tag=Nominate,distance=..30] add Active
execute if predicate exigence:mirror/upper_left run return run tag @e[type=minecraft:armor_stand,tag=MirrorNode,tag=UpperLeft,tag=Nominate,distance=..30] add Active
execute if predicate exigence:mirror/upper_right run return run tag @e[type=minecraft:armor_stand,tag=MirrorNode,tag=UpperRight,tag=Nominate,distance=..30] add Active

# Mirror bookshelf
execute if predicate exigence:mirror/bookshelf run return run tag @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Villager,tag=Nominate,distance=..30] add Active
