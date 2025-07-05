# Called by interacted with correct resonance shard

## CONSTRAINTS
#   AS crystal interaction

## INPUT
#   STR color - "Ruby", "Sapphire", "Emerald", "Topaz", "Amethyst"

#============================================================================================================

# DEBUG
#say Damage

# Get ID score for compare
scoreboard players operation #compare CrystalID = @s CrystalID

# Remove 1 random item display with matching ID
execute as @e[type=minecraft:item_display,tag=CrystalDisplay] if score @s CrystalID = #compare CrystalID run tag @s add RandomDestroy
execute as @e[type=item_display,tag=RandomDestroy,sort=random,limit=1] run kill @s
tag @e[type=item_display,tag=RandomDestroy] remove RandomDestroy

# Remove 1 from Wards score
$scoreboard players remove $(color) Wards 1
$scoreboard players remove @a[tag=PrimaryPlayer] Ward$(color) 1

# If remaining score is no 0, break
$execute if score $(color) Wards matches 0 run function exigence:game/other/wards/crystal/break

# TODO playsound/particles
execute at @s run playsound minecraft:entity.elder_guardian.hurt ambient @a ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 2 0.7
execute at @s run particle block{block_state:amethyst_block} ~ ~0.5 ~ 0.2 0.2 0.2 0.01 30

# Decrement crystaling hand item
execute as @a[tag=Crystaling,gamemode=!creative] run item modify entity @s weapon.mainhand exigence:decrement
