# Get which item display looking at

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# Add local tag
tag @s add IAmLooking

# Reset tag
tag @e[type=minecraft:item_display,tag=HoverCandidate,distance=..6] remove HoverCandidate

# Check
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=SizeClassA,tag=!CreationProcess,distance=3..6] at @s anchored eyes facing entity @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] positioned ^ ^ ^1 if entity @s[distance=..0.12] run tag @s add HoverCandidate
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=SizeClassA,tag=!CreationProcess,distance=..3] at @s anchored eyes facing entity @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] positioned ^ ^ ^1 if entity @s[distance=..0.18] run tag @s add HoverCandidate

execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=SizeClassB,distance=3..6] at @s anchored eyes facing entity @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] positioned ^ ^ ^1 if entity @s[distance=..0.05] run tag @s add HoverCandidate
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=SizeClassB,distance=..3] at @s anchored eyes facing entity @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] positioned ^ ^ ^1 if entity @s[distance=..0.10] run tag @s add HoverCandidate

execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=SizeClassMedium,tag=!HidingHead,distance=3..6] at @s anchored eyes facing entity @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] positioned ^ ^ ^1 if entity @s[distance=..0.07] run tag @s add HoverCandidate
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=SizeClassMedium,tag=!HidingHead,distance=..3] at @s anchored eyes facing entity @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] eyes anchored feet positioned ^ ^ ^1 rotated as @p[tag=ProfileSelecting,tag=IAmLooking,distance=..16] positioned ^ ^ ^1 if entity @s[distance=..0.16] run tag @s add HoverCandidate

# Get closest of HoverCandidates
execute positioned ~ ~1.5 ~ as @n[distance=..6,type=minecraft:item_display,tag=HoverCandidate] run tag @s add Hover

# Copy IDID to foreign key so we know which IDID which player is looking at
scoreboard players operation @s shop.player.looking_at_idid = @n[distance=..6,type=minecraft:item_display,tag=HoverCandidate,tag=Hover] IDID
scoreboard players operation #compare IDID = @s shop.player.looking_at_idid

# If looking at was found, make interaction big enough to use
data merge entity @n[distance=..3,type=interaction,tag=ProfileSelectorInteraction] {width:1,height:1}

# Remove local tag
tag @s remove IAmLooking
