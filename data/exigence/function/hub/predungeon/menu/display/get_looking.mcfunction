# Get which item display looking at

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# Add local tag
tag @s add IAmLooking

# Reset tag
execute anchored eyes run tag @e[distance=..6,type=minecraft:item_display,tag=HoverCandidate] remove HoverCandidate

# Check
execute as @e[distance=..2,type=minecraft:item_display,tag=MenuDisplay] at @s anchored eyes facing entity \
@p[distance=..16,tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[distance=..16,tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.16] run tag @s add HoverCandidate
execute as @e[distance=2..4,type=minecraft:item_display,tag=MenuDisplay] at @s anchored eyes facing entity \
@p[distance=..16,tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[distance=..16,tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.11] run tag @s add HoverCandidate
execute as @e[distance=4..6,type=minecraft:item_display,tag=MenuDisplay,tag=!LevelChooserDisplay] at @s anchored eyes facing entity \
@p[distance=..16,tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[distance=..16,tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.08] run tag @s add HoverCandidate
execute as @e[distance=4..6,type=minecraft:item_display,tag=MenuDisplay,tag=LevelChooserDisplay] at @s anchored eyes facing entity \
@p[distance=..16,tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[distance=..16,tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.07] run tag @s add HoverCandidate

# Get closest of HoverCandidates
execute anchored eyes run tag @n[distance=..6,type=minecraft:item_display,tag=HoverCandidate] add Hover

# Copy IDID to foreign key so we know which IDID which player is looking at
scoreboard players operation @s shop.player.looking_at_idid = @n[distance=..6,type=minecraft:item_display,tag=HoverCandidate,tag=Hover] IDID
scoreboard players operation #compare IDID = @s shop.player.looking_at_idid

# If looking at was found, make interaction of this player big enough to use
execute if score @s shop.player.looking_at_idid matches 1.. run data merge entity @n[distance=..3,type=interaction,tag=PredungeonInteraction,tag=CurrentCheckingInteraction] {width:1,height:1}

# Remove local tag
tag @s remove IAmLooking
