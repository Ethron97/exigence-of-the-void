# Called by use_item when player uses far step item

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Use far step

# If does not have the correct status effect, cancel and clear item
execute unless score @s game.player.effects.farstep matches 1.. run tellraw @s {text:"✖ This item can only be used while Far Stepping",color:"red"}
execute unless score @s game.player.effects.farstep matches 1.. run clear @s carrot_on_a_stick[custom_data~{item_name:'item_far_step'}]
execute unless score @s game.player.effects.farstep matches 1.. at @s run return run playsound minecraft:entity.allay.hurt ambient @s ~ ~5 ~ 1 1
#----------------------------------------------------------------------------------------------------

# If not previewing teleport, fail
execute unless entity @s[tag=PreviewingTeleport] run tellraw @s {text:"✖ Failed to find valid teleport location",color:"red"}
execute unless entity @s[tag=PreviewingTeleport] at @s run return run playsound minecraft:entity.phantom.hurt ambient @s ~ ~100 ~ 100 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Trigger far step

scoreboard players operation #compare game.player.player_number = @s game.player.player_number

# Playsound to leave behind
playsound minecraft:entity.player.teleport ambient @a ~ ~ ~ 1 1.0

# Mark preview for this player
execute at @s as @e[type=minecraft:mannequin,tag=TeleportPreview,distance=..64] \
if score @s game.entity.player_number = #compare game.player.player_number run tag @s add Updating

# Teleport player to the preview location
execute at @s at @e[type=minecraft:mannequin,tag=TeleportPreview,tag=Updating,distance=..64] run tp @s ~ ~ ~

# Remove updating tag
execute at @s as @e[type=minecraft:mannequin,tag=TeleportPreview,tag=Updating,distance=..1] run tag @s remove Updating

# Playsound for player using it
execute at @s run playsound minecraft:entity.player.teleport ambient @s ~ ~100 ~ 1000 1.0