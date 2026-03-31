# Handles everything related to mirror parkours, hidden blocks, and reflections

## CONSTRAINTS
#   Requires that each active player has their own Reflection, Rotation, and RotationReflection armorstands

#====================================================================================================

# Mirror Vision
execute if score seconds.cooldown tick_counter matches 3 as @a[scores={game.player.mod.mirror_vision=1..,dead=0},tag=ActivePlayer] run function exigence:player/modifiers/mirror_vision
function exigence:mirror/hidden_blocks/hidden_block_tick

# Detect approaches
function exigence:mirror/mirrors/detect_approaches

# For each living player, update their Reflection
execute as @a[scores={dead=0},tag=ActivePlayer] run function exigence:mirror/reflection/player_handle
