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
execute as @n[distance=..10,type=minecraft:armor_stand,tag=AltarNode,scores={ObjectLevel=1..4}] if score @s NodeID = #compare NodeID at @s run function exigence:altar/node/light
execute as @n[distance=..10,type=minecraft:armor_stand,tag=AltarNode,scores={ObjectLevel=10}] if score @s NodeID = #compare NodeID at @s run function exigence:altar/node/light_tutorial

# If Trial or Crucible altar, call sub-handle to begin trial
execute as @n[distance=..10,type=minecraft:armor_stand,tag=AltarNode,tag=VaultAltar,scores={ObjectLevel=3}] if score @s NodeID = #compare NodeID at @s run function exigence:altar/trial/handle_interact_trial

# Clear tag
execute on target run tag @s remove Lighting
