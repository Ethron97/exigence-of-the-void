# Called by player/tick/tick_alive on dropped soulbound card

## CONSTRAINTS
#   AS carrot on a stick with data is_spellbound = true
#   OR as any item with is_soulbound
#   OR any item we don't want dropped (like in Predungeon)

#====================================================================================================

# Tellraw (origin of item)
execute on origin run tellraw @s[tag=ActivePlayer] [{text:"✖ You cannot drop Soulbound items!",color:"red"}]
execute on origin run tellraw @s[tag=!ActivePlayer] [{text:"✖ You cannot drop items now!",color:"red"}]

# Tag entity so we guarantee pick it
tag @s add DroppedSoulbounding

# Set owner
execute at @s on origin run data modify entity @n[distance=..0.1,type=item,tag=DroppedSoulbounding] Owner set from entity @s UUID

# Set pickup delay to 0 so they can instantly pick it up again
data modify entity @s PickupDelay set value 0s

# Teleport it to the player to guarantee they pick it up
execute at @s on origin run tp @n[distance=..0.1,type=item,tag=DroppedSoulbounding] @s

# Tag item so it doesn't "double proc"
tag @s add SoulWarned

# Remove local tag
tag @s remove DroppedSoulbounding
