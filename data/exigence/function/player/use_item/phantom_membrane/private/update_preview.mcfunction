# Teleport the preview based on where the player is looking

## CONSTRAINTS
#   AS player

#============================================================================

# Tag the preview associated with this player
scoreboard players operation #compare game.entity.profile_id = @s profile.player.profile_id
tag @e[type=block_display,tag=ItemPreview] remove Updating
execute as @e[type=block_display,tag=ItemPreview] if score @s game.entity.profile_id = #compare game.entity.profile_id run tag @s add Updating

# DEWBUG
#execute as @e[type=block_display,tag=Updating,tag=ItemPreview] run say updating

# Reset validation tag
tag @e[type=block_display,tag=ItemPreview,tag=Valid] remove Valid

# Tag a node closest to 30 blocks in the direction the player is looking, within 25 blocks, and on the same level as the player
execute if score @s game.player.active_level matches 1 at @s positioned ^ ^ ^30 at @e[distance=..25,type=minecraft:armor_stand,tag=PhantomNode,sort=nearest,limit=1,scores={ObjectLevel=1}] as @e[type=block_display,tag=ItemPreview,tag=Updating] run function exigence:player/use_item/phantom_membrane/private/teleport_preview
execute if score @s game.player.active_level matches 2 at @s positioned ^ ^ ^30 at @e[distance=..25,type=minecraft:armor_stand,tag=PhantomNode,sort=nearest,limit=1,scores={ObjectLevel=2}] as @e[type=block_display,tag=ItemPreview,tag=Updating] run function exigence:player/use_item/phantom_membrane/private/teleport_preview
execute if score @s game.player.active_level matches 3 at @s positioned ^ ^ ^30 at @e[distance=..25,type=minecraft:armor_stand,tag=PhantomNode,sort=nearest,limit=1,scores={ObjectLevel=3}] as @e[type=block_display,tag=ItemPreview,tag=Updating] run function exigence:player/use_item/phantom_membrane/private/teleport_preview
execute if score @s game.player.active_level matches 4 at @s positioned ^ ^ ^30 at @e[distance=..25,type=minecraft:armor_stand,tag=PhantomNode,sort=nearest,limit=1,scores={ObjectLevel=4}] as @e[type=block_display,tag=ItemPreview,tag=Updating] run function exigence:player/use_item/phantom_membrane/private/teleport_preview

# If no valid, tp preview back to start
execute as @e[type=block_display,tag=ItemPreview,tag=Updating,tag=!Valid] run function exigence:player/use_item/phantom_membrane/private/reset_preview

# Glow if valid
execute as @e[type=block_display,tag=ItemPreview,tag=Updating,tag=Valid] run data merge entity @s {Glowing:1b}

# REMOVE LOCAL TAG AFTER CALLING THIS FUNCTION
