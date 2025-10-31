# Get which item display looking at

## CONSTRAINTS
#   AS player

#========================================================================================================

# Add local tag
tag @s add IAmLooking

# Reset tag
tag @e[distance=..6,type=minecraft:item_display,tag=HoverCandidate] remove HoverCandidate

# Check
execute at @s as @e[distance=..6,type=minecraft:item_display,tag=MenuDisplay,tag=!CreationProcess,tag=SlotDisplay] at @s anchored eyes facing entity @p[tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.12] run tag @s add HoverCandidate
execute at @s as @e[distance=..6,type=minecraft:item_display,tag=MenuDisplay,tag=!CreationProcess,tag=DifficultySelectorDisplay] at @s anchored eyes facing entity @p[tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.05] run tag @s add HoverCandidate
execute at @s as @e[distance=..6,type=minecraft:item_display,tag=MenuDisplay,tag=!CreationProcess,tag=CoopSelectorDisplay] at @s anchored eyes facing entity @p[tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.05] run tag @s add HoverCandidate

# Get closest of HoverCandidates
execute at @a as @n[distance=..6,type=minecraft:item_display,tag=HoverCandidate] run tag @s add Hover

# Copy IDID to foreign key so we know which IDID which player is looking at
scoreboard players operation @s shop.player.looking_at_idid = @n[distance=..6,type=minecraft:item_display,tag=HoverCandidate,tag=Hover] IDID
scoreboard players operation #compare IDID = @s shop.player.looking_at_idid

# If looking at was found, make interaction big enough to use
data merge entity @n[distance=..3,type=interaction,tag=ProfileSelectorInteraction] {width:1,height:1}

# Remove local tag
tag @s remove IAmLooking
