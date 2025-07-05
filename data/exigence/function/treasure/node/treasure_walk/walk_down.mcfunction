## CONSTRAINTS
#   AS/AT marker walk

#========================================================================================================

# DEBUG
#say Walk down

# If next block is blacklisted, return fail
execute if block ~ ~-1 ~ #exigence:drop_blacklist run data modify storage exigence:treasure_drop verify set value 0
#execute if block ~ ~-1 ~ #exigence:drop_blacklist run say Blacklist, fail
execute if block ~ ~-1 ~ #exigence:drop_blacklist run return fail

# If next block is not passable, return success
execute unless block ~ ~-1 ~ #exigence:pass_through run tp @s ~ ~ ~
#execute unless block ~ ~-1 ~ #exigence:pass_through run say Solid, end success
execute unless block ~ ~-1 ~ #exigence:pass_through run return 0

# Increase depth by 1
scoreboard players add @s TreasureWalkDepth 1

# If depth is greater than 15, fail
#execute if score @s TreasureWalkDepth matches 15.. run say Treasure walk depth >= 15, retry treasure drop
execute if score @s TreasureWalkDepth matches 15.. run data modify storage exigence:treasure_drop verify set value 0
execute if score @s TreasureWalkDepth matches 15.. run return fail

# If next block is passable, iterate down one block
execute positioned ~ ~-1 ~ run function exigence:treasure/node/treasure_walk/walk_down
