# Handle right click function tree
#   Called by misc/interaction/check_interaction

## CONSTRAINTS
#   AS interaction

#=============================================================================================================

# Check for sub-function
execute as @s[tag=FunctionInteraction] run function exigence:misc/interaction/function_right

execute as @s[tag=BerryInteract] run function exigence:botany/handle_interact
execute as @s[tag=BellInteract] run function exigence:bell/node/ring_resolve
execute as @s[tag=AltarInteract] at @s run function exigence:altar/handle_interact
execute as @s[tag=BeaconInteract] run function exigence:beacon/handle_interact
execute as @s[tag=Crystal] run function exigence:game/other/wards/crystal/handle_interact
execute as @s[tag=VaultHandle] run function exigence:door/vault/handle_interact
execute as @s[tag=DoorHandle] run function exigence:door/level/handle_interact

# Remove data to reset interact detection
data remove entity @s interaction
