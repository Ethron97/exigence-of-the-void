# Get which item display looking at

## CONSTRAINTS
#   AS player

## INPUT
#   SCORE #compare hub.locker_room_id

#====================================================================================================

# Add local tag
tag @s add IAmLooking

# Reset tag
tag @e[distance=..6,type=minecraft:item_display,tag=HoverCandidate] remove HoverCandidate

# Check
execute at @s as @e[distance=..6,type=minecraft:item_display,tag=MenuDisplay] if score @s hub.entity.locker_room_id = #compare hub.locker_room_id at @s anchored eyes facing entity \
@p[distance=..16,tag=LockerRoom,tag=IAmLooking] eyes anchored feet positioned ^ ^ ^1 rotated as @p[distance=..16,tag=LockerRoom,tag=IAmLooking] positioned ^ ^ ^1 if entity @s[distance=..0.12] run tag @s add HoverCandidate

# Get closest of HoverCandidates
execute at @s positioned ~ ~1.5 ~ as @n[distance=..6,type=minecraft:item_display,tag=HoverCandidate] run tag @s add Hover

# Copy IDID to foreign key so we know which IDID which player is looking at
scoreboard players operation @s shop.player.looking_at_idid = @n[distance=..6,type=minecraft:item_display,tag=HoverCandidate,tag=Hover] IDID
scoreboard players operation #compare IDID = @s shop.player.looking_at_idid

# If looking at was found, make interaction of this player big enough to use
execute at @s as @n[distance=..3,type=interaction,tag=LockerRoomInteraction,tag=CurrentCheckingInteraction] run data merge entity @s {width:1,height:1}

# Remove local tag
tag @s remove IAmLooking
