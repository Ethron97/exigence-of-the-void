# Called from interaction

## CONSTRAINTS
#   AS AltarInteraction interaction OR AltarNode armorstand
#       Both have the same NodeID

# ===============================================================================================================

# DEBUG
#say Altar handle

# Tag the player who interacted
execute on target run tag @s add Lighting

# Store compare
scoreboard players operation #compare NodeID = @s NodeID

# Call subfunction as altar that is interacted with
execute as @e[type=minecraft:armor_stand,tag=AltarNode] if score @s NodeID = #compare NodeID at @s run function exigence:altar/node/light

# If Trial or Crucible altar, call sub-handle to begin trial
execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=VaultAltar,scores={ObjectLevel=3}] if score @s NodeID = #compare NodeID at @s run function exigence:altar/trial/handle_interact_trial

# Clear tag
execute on target run tag @s remove Lighting
