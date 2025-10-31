# Call with {function:"",priority:0}
#   priority 1 means no max iterations fail, will retry until it drops.
#   priority 0 means max tries equal to config (default 10)
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

$data modify storage exigence:treasure_drop priority set value $(priority)

$execute as @s[tag=TreasureNodeBox] at @s run function exigence:treasure/node/private/drop_treasure_box {function:"$(function)"}
$execute as @s[tag=TreasureNodeWalk] at @s run function exigence:treasure/node/private/drop_treasure_walk {function:"$(function)"}

# Remove local tag
tag @s remove Dropping
