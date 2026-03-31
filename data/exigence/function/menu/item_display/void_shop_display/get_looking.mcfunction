# Get which item display looking at

## CONSTRAINTS
#   AS player

#====================================================================================================

# Add local tag
tag @s add IAmLooking

# Reset tag
execute at @s run tag @e[type=minecraft:item_display,tag=HoverCandidate,distance=..8] remove HoverCandidate

# Detect which item_display(s) the player is looking at
execute at @a[tag=VoidShopping] as @e[type=minecraft:item_display,tag=VoidShopDisplay,distance=..4] at @s anchored eyes facing entity @p[tag=IAmLooking,distance=..8] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=VoidShopping,distance=..8] positioned ^ ^ ^1 if entity @s[distance=..0.08] run tag @s add HoverCandidate

# Get closest of HoverCandidates
execute at @a[tag=VoidShopping] as @n[type=minecraft:item_display,tag=HoverCandidate,distance=..4] run tag @s add Hover

# Copy IDID to foreign key so we know which IDID which player is looking at
scoreboard players operation @s shop.player.looking_at_idid = @n[type=minecraft:item_display,tag=HoverCandidate,tag=Hover,distance=..4] IDID
scoreboard players operation #compare IDID = @s shop.player.looking_at_idid

# If looking at was found, move here
#execute at @e[type=minecraft:item_display,tag=HoverCandidate,tag=Hover,limit=1] positioned ~ ~-0.5 ~ run function exigence:player/utility/interaction/tp_here
execute at @s positioned ~ ~1 ~ run function exigence:player/utility/interaction/tp_here

# Tp interaction looking at player OLD
#execute at @s as @e[type=minecraft:interaction] if score @s IDID = #compare IDID run tp @s ~ ~1 ~
#tag @s add HoverScale
#execute as @e[type=minecraft:interaction,tag=HoverScale] at @p[tag=IAmLooking] run tp @s ~ ~1 ~
#tag @e[type=interaction,tag=HoverScale] remove HoverScale

# Remove local tag
tag @s remove IAmLooking
