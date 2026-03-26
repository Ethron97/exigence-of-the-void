# Get which item display looking at

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# Add local tag
tag @s add IAmLooking

# Reset tag
tag @e[distance=..6,type=minecraft:item_display,tag=HoverCandidate] remove HoverCandidate

# Check
execute as @e[distance=..6,type=minecraft:item_display,tag=MenuDisplay] at @s anchored eyes facing entity \
@p[distance=..16,tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[distance=..16,tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.10] run tag @s add HoverCandidate

# Get closest of HoverCandidates
execute positioned ~ ~1.5 ~ run tag @n[distance=..6,type=minecraft:item_display,tag=HoverCandidate] add Hover

# Copy IDID to foreign key so we know which IDID which player is looking at
scoreboard players operation @s shop.player.looking_at_idid = @n[distance=..6,type=minecraft:item_display,tag=HoverCandidate,tag=Hover] IDID
scoreboard players operation #compare IDID = @s shop.player.looking_at_idid

# If looking at was found, make interaction of this player big enough to use
data merge entity @n[distance=..3,type=interaction,tag=PredungeonInteraction,tag=CurrentCheckingInteraction] {width:1,height:1}

# Remove local tag
tag @s remove IAmLooking
