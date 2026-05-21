# Called from interaction

## CONSTRAINTS
#   AS/AT AltarInteraction interaction 

#====================================================================================================

# DEBUG
execute if score toggle.altar debug matches 1 if score debug.level debug matches 3.. run say (D3) Altar handle interact

# Early exit if max menace
execute if score game.max_menace game.state matches 1 run playsound block.fire.extinguish block @s ~ ~ ~ 1 1
execute on target if score game.max_menace game.state matches 1 run return run tellraw @s [{text:"✖ An odious force prevents you from lighting the Altar!",color:"red"}]
#----------------------------------------------------------------------------------------------------

# Tag the player who interacted
execute on target run tag @s add Lighting

# Store compare
scoreboard players operation #compare node.id = @s game.interaction.node.id

# Call subfunction as altar that is interacted with
execute as @e[type=minecraft:marker,scores={node.property.object_level=1..4},tag=AltarNode,distance=..10] if score @s node.id = #compare node.id at @s run function exigence:altar/node/light
execute as @e[type=minecraft:marker,scores={node.property.object_level=10},tag=AltarNode,distance=..10] if score @s node.id = #compare node.id at @s run function exigence:altar/node/light_tutorial

# If Trial or Crucible altar, call sub-handle to begin trial
execute as @e[type=minecraft:marker,scores={node.property.object_level=3},tag=AltarNode,tag=VaultAltar,distance=..10] if score @s node.id = #compare node.id at @s run function exigence:altar/trial/handle_interact_trial

# Clear tag
execute on target run tag @s remove Lighting
