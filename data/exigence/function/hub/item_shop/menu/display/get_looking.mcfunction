# Get which item display looking at

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# Add local tag
tag @s add IAmLooking

# Reset tag
tag @e[distance=..8,type=minecraft:item_display,tag=HoverCandidate] remove HoverCandidate

# Check
execute as @e[distance=4..8,type=minecraft:item_display,tag=MenuDisplay] at @s anchored eyes facing entity @p[distance=..16,tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[distance=..16,tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.05] run tag @s add HoverCandidate
execute as @e[distance=..4,type=minecraft:item_display,tag=MenuDisplay] at @s anchored eyes facing entity @p[distance=..16,tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[distance=..16,tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.08] run tag @s add HoverCandidate

# Get closest of HoverCandidates
execute as @n[distance=..8,type=minecraft:item_display,tag=HoverCandidate] run tag @s add Hover

# Copy IDID to foreign key so we know which IDID which player is looking at
scoreboard players operation @s shop.player.looking_at_idid = @n[distance=..8,type=minecraft:item_display,tag=HoverCandidate,tag=Hover] IDID
scoreboard players operation #compare IDID = @s shop.player.looking_at_idid

# If looking at was found, make interaction of this player big enough to use
#   TODO Emergency check if interaction is not within 8 blocks
execute as @n[distance=..8,type=interaction,tag=ItemShopInteraction,tag=CurrentCheckingInteraction] run data merge entity @s {width:1,height:1}

# Remove local tag
tag @s remove IAmLooking
