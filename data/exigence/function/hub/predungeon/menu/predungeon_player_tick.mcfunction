# Handle interaction tp and get-looking update

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

#say Locker tick player

scoreboard players operation #compare career.player_id = @s career.player_id

# Mark interaction
execute as @e[distance=..8,type=interaction,tag=PredungeonInteraction] \
if score @s hub.entity.player_id = #compare career.player_id run tag @s add CurrentCheckingInteraction
#   TODO emergency check if interaction is not within 8

# Teleport your interaction to player
execute anchored eyes positioned ^ ^-0.5 ^ as @n[distance=..8,type=interaction,tag=CurrentCheckingInteraction] run tp @s ~ ~ ~

# Detect which item_display(s) the player is looking at
scoreboard players set @s shop.player.looking_at_idid 0
function exigence:hub/predungeon/menu/display/get_looking

# Reset interaction size if player are not looking
execute as @s[scores={shop.player.looking_at_idid=0}] run data merge entity @n[distance=..3,type=interaction,tag=CurrentCheckingInteraction] {width:0.01,height:0.01}

# Prevent player from dropping items
execute if entity @s[gamemode=adventure] as @n[distance=..3,type=minecraft:item,tag=!SoulWarned] run function exigence:player/dropped_soulbound

# Remove local tag
tag @n[distance=..8,type=interaction,tag=CurrentCheckingInteraction] remove CurrentCheckingInteraction
