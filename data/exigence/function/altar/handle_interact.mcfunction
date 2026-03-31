# Called from interaction

## CONSTRAINTS
#   AS/AT AltarInteraction interaction OR AltarNode armorstand
#       Both have the same NodeID

# ===============================================================================================================

# DEBUG
#say Altar handle

# Tag the player who interacted
execute on target run tag @s add Lighting

# Store compare
scoreboard players operation #compare NodeID = @s NodeID

# Call subfunction as altar that is interacted with
execute as @n[type=minecraft:armor_stand,scores={ObjectLevel=1..4},tag=AltarNode,distance=..10] if score @s NodeID = #compare NodeID at @s run function exigence:altar/node/light
execute as @n[type=minecraft:armor_stand,scores={ObjectLevel=10},tag=AltarNode,distance=..10] if score @s NodeID = #compare NodeID at @s run function exigence:altar/node/light_tutorial

# If Trial or Crucible altar, call sub-handle to begin trial
execute as @n[type=minecraft:armor_stand,scores={ObjectLevel=3},tag=AltarNode,tag=VaultAltar,distance=..10] if score @s NodeID = #compare NodeID at @s run function exigence:altar/trial/handle_interact_trial

# Clear tag
execute on target run tag @s remove Lighting
