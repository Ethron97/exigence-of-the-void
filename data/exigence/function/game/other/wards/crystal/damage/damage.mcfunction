# Called by interacted with correct resonance shard
# Common/generic damage function

## CONSTRAINTS
#   AS/AT crystal interaction

#====================================================================================================

# DEBUG
execute if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) Damage

# Get ID score for compare
scoreboard players operation #compare game.story.ward_crystal.id = @s game.story.ward_crystal.id

# Remove 1 random item display with matching ID
execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:item_display,tag=CrystalDisplay] if score @s game.story.ward_crystal.id = #compare game.story.ward_crystal.id run tag @s add RandomDestroy
execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:item_display,tag=RandomDestroy,sort=random,limit=1] run kill @s
tag @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:item_display,tag=RandomDestroy] remove RandomDestroy

# Playsound/particles
execute at @s run playsound minecraft:entity.elder_guardian.hurt ambient @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 2 0.7

# Decrement crystaling hand item
execute as @a[tag=Crystaling,gamemode=!creative] run item modify entity @s weapon.mainhand exigence:decrement
