# Called from player/tick_alive if player has a relevant item in their inventory
# Update a player's preview

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 5.. run say (D5 Player) Update player teleport preview

scoreboard players operation #preview_level Temp = @s game.player.active_level
scoreboard players set #did_teleport Temp 0

scoreboard players set #preview_active Temp 0
# Store is-holding
#   Phantom Membrane item + invis
execute if score @s game.player.effects.invisibility matches 1.. if items entity @s weapon.* minecraft:carrot_on_a_stick[custom_data~{item_name:'item_phantom_membrane'}] run scoreboard players set #preview_active Temp 1
#   Far stepper item + farstep effect
execute if score @s game.player.effects.farstep matches 1.. if items entity @s weapon.* minecraft:carrot_on_a_stick[custom_data~{item_name:'item_far_step',is_soulbound:true}] run scoreboard players set #preview_active Temp 1

execute if score toggle.player debug matches 1 if score debug.level debug matches 4.. if score #preview_active Temp matches 1 run say (D4 Player) Preview active
execute if score toggle.player debug matches 1 if score debug.level debug matches 4.. if score #preview_active Temp matches 0 run say (D4 Player) Preview not active

# If player is not holding membrane, teleport preview to start (if was previewing)
scoreboard players operation #compare game.player.player_number = @s game.player.player_number
execute if score #preview_active Temp matches 0 if entity @s[tag=PreviewingTeleport] as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:mannequin,tag=TeleportPreview] if score @s game.entity.player_number = #compare game.player.player_number run function exigence:player/utility/teleport_preview/reset_preview
execute if score #preview_active Temp matches 0 run tag @s remove PreviewingTeleport

# If player IS holding membrane, update preview
#   OUTPUT: #did_teleport Temp
execute if score #preview_active Temp matches 1 if entity @s[tag=!PreviewingTeleport] at @s positioned ^ ^ ^30 \
as @e[x=534,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:mannequin,tag=TeleportPreview] if score @s game.entity.player_number = #compare game.player.player_number run function exigence:player/utility/teleport_preview/update_preview
execute if score #preview_active Temp matches 1 if score #did_teleport Temp matches 1 run tag @s add PreviewingTeleport


# If player has any farstep, queue removal of the item
execute if score @s game.player.effects.farstep matches 0 run function exigence:player/clear/farstepper