# Validate if the chosen position is not air and not above bad

## CONSTRAINTS
#   AS/AT treasure walking marker

## INPUT
#   INT final_x
#   INT final_y
#   INT final_z

## OUTPUTS
#   DATA exigence:treasure_drop verify 0-1

#====================================================================================================

# DEBUG
$execute if score toggle.treasure debug matches 1 if score debug.level debug matches 3.. run say (D3) Verify drop position $(final_x) $(final_y) $(final_z)

$execute if block $(final_x) $(final_y) $(final_z) #exigence:pass_through run data modify storage exigence:treasure_drop verify set value 1

execute if data storage exigence:treasure_drop {verify:0} run return 1
#----------------------------------------------------------------------------------------------------

# If verify is 1, tp marker here an walk down
$execute positioned $(final_x) $(final_y) $(final_z) align xyz run tp @s ~0.5 ~0.5 ~0.5
scoreboard players set @s node.treasure.treasure_walk_depth 0
execute at @s run function exigence:treasure/node/treasure_walk/walk_down
