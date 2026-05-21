# Called by use_item when player uses phantom membrane item

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) Use phantom membrane

# If no invis, fail
execute unless score @s game.player.effects.invisibility matches 1.. run tellraw @s {text:"✖ This item can only be used while invisible",color:"red"}
execute unless score @s game.player.effects.invisibility matches 1.. at @s run return run playsound minecraft:entity.phantom.hurt ambient @s ~ ~100 ~ 100 0.8
#----------------------------------------------------------------------------------------------------

# If not previewing teleport, fail
execute unless entity @s[tag=PreviewingTeleport] run tellraw @s {text:"✖ Failed to find valid teleport location",color:"red"}
execute unless entity @s[tag=PreviewingTeleport] at @s run return run playsound minecraft:entity.phantom.hurt ambient @s ~ ~100 ~ 100 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) Trigger phantom membrane

scoreboard players operation #compare game.player.player_number = @s game.player.player_number

# Playsound to leave behind
playsound minecraft:entity.phantom.ambient ambient @a ~ ~ ~ 1 1.0

# Mark preview for this player
execute at @s as @e[type=minecraft:mannequin,tag=TeleportPreview,distance=..64] \
if score @s game.entity.player_number = #compare game.player.player_number run tag @s add Updating

# Teleport player to the preview location
execute at @s at @e[type=minecraft:mannequin,tag=TeleportPreview,tag=Updating,distance=..64] run tp @s ~ ~ ~

# Reset preview
execute at @s as @e[type=minecraft:mannequin,tag=TeleportPreview,tag=Updating,distance=..1] run function exigence:player/utility/teleport_preview/reset_preview

# Playsound for player using it
execute at @s run playsound minecraft:entity.phantom.ambient ambient @s ~ ~100 ~ 1000 1.0

tag @s remove PreviewingTeleport

# Clear 
scoreboard players set #remove Temp 1
