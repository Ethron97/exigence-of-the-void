# Called from player/tick_alive
# Update a player's preview

## CONSTRAINTS
#   AS player

#=============================================================================================================

scoreboard players set temp Temp 0

# Store is-holding
#   Phantom Membrane + invis
execute if score @s effect_invisibility matches 1.. if items entity @s weapon.* minecraft:carrot_on_a_stick[custom_data={item_name:'item_phantom_membrane'}] run scoreboard players set temp Temp 1
#   Far stepper + night vision
execute if score @s effect_farstep matches 1.. if items entity @s weapon.* minecraft:carrot_on_a_stick[custom_data={item_name:'item_far_step',is_soulbound:true}] run scoreboard players set temp Temp 1

# If player is not holding membrane, teleport preview to start
scoreboard players operation #compare ID = @s PlayerID
execute if score temp Temp matches 0 as @e[type=block_display,tag=ItemPreview,tag=Valid] if score @s ID = #compare ID run function exigence:player/use_item/phantom_membrane/private/reset_preview

# If player IS holding membrane, update preview
execute if score temp Temp matches 1 run function exigence:player/use_item/phantom_membrane/private/update_preview

