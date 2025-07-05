# Call with {function:""}
# Valid functions:
#   - exigence:treasure/node/summon_coin
#   - exigence:door/level/LEVEL/summon_key
#   - exigence:treasure/sherd/summon_sherd
#   - exigence:beacon/summon_ardor_flame
#   - exigence:ember/summon_ember
#   - exigence:door/vault/summon_vault_key
#   Valid functions assume AT location constraint

#===============================================================================================================

tag @s add Dropping
#$execute as @e[type=minecraft:armor_stand,tag=Dropping] run say dropping $(function)

$execute as @s[tag=TreasureNodeBox] at @s run function exigence:treasure/node/private/drop_treasure_box {function:"$(function)"}
$execute as @s[tag=TreasureNodeWalk] at @s run function exigence:treasure/node/private/drop_treasure_walk {function:"$(function)"}

# Remove local tag
tag @s remove Dropping
