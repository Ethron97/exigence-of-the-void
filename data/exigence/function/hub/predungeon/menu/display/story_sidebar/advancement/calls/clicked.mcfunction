# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Clicked advancement

# Increase cooldown score for player
scoreboard players add @p[tag=Interacting,distance=..16] hub.player.interaction_cooldown 5

# Effects
execute at @s run playsound minecraft:entity.ender_eye.death ui @a ~ ~ ~ 1 1
execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

# Tellraw advancement description
tellraw @p[tag=Interacting,distance=..16] [{nbt:"item.components.'minecraft:lore'[1]",source:"entity",entity:"@s",interpret:true}]
