# Use predicates to narrow down the correct mirror node

## CONSTRAINTS
#   AS player

#===================================================================================================

# DEBUG
#say get active mirror

# Select active mirrornode from nominate, if player is within the specific box for that mirror node
execute if predicate exigence:mirror/stairs run tag @e[type=armor_stand,tag=MirrorNode,tag=Stairs,tag=Nominate] add Active


# Tunnel mirror parkours:
execute if predicate exigence:mirror/3wide run tag @e[type=armor_stand,tag=MirrorNode,tag=3wide,tag=Nominate] add Active
execute if predicate exigence:mirror/4wide run tag @e[type=armor_stand,tag=MirrorNode,tag=4wide,tag=Nominate] add Active
execute if predicate exigence:mirror/3way run tag @e[type=armor_stand,tag=MirrorNode,tag=3way,tag=Nominate] add Active
execute if predicate exigence:mirror/45d run tag @e[type=armor_stand,tag=MirrorNode,tag=45d,tag=Nominate] add Active


# Laboratory
execute if predicate exigence:mirror/lower_left run tag @e[type=armor_stand,tag=MirrorNode,tag=LowerLeft,tag=Nominate] add Active
execute if predicate exigence:mirror/upper_left run tag @e[type=armor_stand,tag=MirrorNode,tag=UpperLeft,tag=Nominate] add Active
execute if predicate exigence:mirror/upper_right run tag @e[type=armor_stand,tag=MirrorNode,tag=UpperRight,tag=Nominate] add Active


# Mirror bookshelf
execute if predicate exigence:mirror/bookshelf run tag @e[type=armor_stand,tag=MirrorNode,tag=Villager,tag=Nominate] add Active
