# Called when player clicks on a displaying card display

## CONSTRAINTS
#   AS/AT card display

## INPUT
#   SCORE #compare hub.entity.profile_id
#   SCORE #compare hub.entity.coop_profile_id

#====================================================================================================

#execute in exigence:hub positioned 51.5 206.0 0.5 run
# Set inputs
#   SCORE #spellbinding Temp (1 = true)
scoreboard players set #spellbinding Temp 0
#   SCORE mod.spellbook game.modifiers
scoreboard players set mod.spellbook game.modifiers 0
function exigence:cards/summon_card with entity @s item.components."minecraft:custom_data"

# Set item origin to player UUID (any of the ones in the ember shop)
execute as @p[tag=EmberShop,distance=..16] run data modify entity @n[type=minecraft:item,tag=NCS,distance=..0.1] Owner set from entity @s UUID
# Teleport item to player
#execute as @n[type=minecraft:item,tag=NCS,distance=..0.1] at @s run tp @s @p[tag=EmberShop,tag=Interacting,distance=..16]

# Launch item forward
data modify entity @n[type=minecraft:item,tag=NCS,distance=..0.1] Motion set value [-0.3,0.0,0.0]

# Playsound
playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1 1
playsound minecraft:entity.item_frame.remove_item ambient @a ~ ~ ~ 1 1

# Give profile/coop profile id so if somebody left it tps to them
execute in exigence:hub as @n[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,scores={hub.room.room_type=5},tag=RoomNode] \
run scoreboard players operation @n[type=minecraft:item,tag=NCS,distance=..0.1] hub.entity.profile_id = @s hub.entity.profile_id
execute in exigence:hub as @n[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,scores={hub.room.room_type=5},tag=RoomNode] \
run scoreboard players operation @n[type=minecraft:item,tag=NCS,distance=..0.1] hub.entity.coop_profile_id = @s hub.entity.coop_profile_id

# Remove local tag
tag @n[type=minecraft:item,tag=NCS,distance=..0.1] remove NCS
