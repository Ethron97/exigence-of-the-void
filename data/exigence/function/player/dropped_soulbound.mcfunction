# Called by player/tick/tick_alive on dropped soulbound card

## CONSTRAINTS
#   AS carrot on a stick with data is_spellbound = true
#   OR as any item with is_soulbound

#==========================================================================================================

# Tellraw (origin of item)
execute on origin run tellraw @s [{text:"You cannot drop Soulbound items",color:"red"}]

# Tag entity so we guarantee pick it
tag @s add DroppedSoulbounding

# Set origin
execute at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1,tag=DroppedSoulbounding] Owner set from entity @s UUID

# Set pickup delay to 0 so they can instantly pick it up again
data modify entity @s PickupDelay set value 0s

# Teleport it to the player to guarantee they pick it up
execute at @s on origin run tp @e[type=item,sort=nearest,limit=1,tag=DroppedSoulbounding] @s

# Tag item so it doesn't "double proc"
tag @s add SoulWarned

# Remove local tag
tag @s remove DroppedSoulbounding

# Kill item
#kill @s[type=minecraft:item]
