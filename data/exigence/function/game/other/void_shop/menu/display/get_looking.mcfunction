# Get which item display looking at

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# Add local tag
tag @s add IAmLooking

# Reset tag
tag @e[type=minecraft:item_display,tag=HoverCandidate,distance=..8] remove HoverCandidate

# Check
execute as @e[type=minecraft:item_display,tag=VoidShopDisplay,distance=..4] at @s anchored eyes facing entity @p[tag=IAmLooking,distance=..16] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=IAmLooking,distance=..8] positioned ^ ^ ^1 if entity @s[distance=..0.08] run tag @s add HoverCandidate

# Get closest of HoverCandidates
execute as @n[type=minecraft:item_display,tag=HoverCandidate,distance=..4] run tag @s add Hover

# Copy IDID to foreign key so we know which IDID which player is looking at
scoreboard players operation @s shop.player.looking_at_idid = @n[type=minecraft:item_display,tag=HoverCandidate,tag=Hover,distance=..8] IDID
scoreboard players operation #compare IDID = @s shop.player.looking_at_idid

# If looking at was found, make interaction of this player big enough to use
execute if score @s shop.player.looking_at_idid matches 1.. as @n[type=minecraft:interaction,tag=PlayerInteraction,tag=CurrentCheckingInteraction,distance=..8] run data merge entity @s {width:1,height:1}

# Remove local tag
tag @s remove IAmLooking
