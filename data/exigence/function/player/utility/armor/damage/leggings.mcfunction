# Called from damage_all if the player has armor in this slot

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Try damage LEGS

# Return if uses not found
execute unless data entity @s equipment.feet.components."minecraft:custom_data".durability run return fail
#----------------------------------------------------------------------------------------------------

# Get durability level
scoreboard players set #durability Temp 0
execute store result score #durability Temp run data get entity @s equipment.legs.components."minecraft:custom_data".durability 1

# Reduce durability by 1
scoreboard players remove #durability Temp 1

# If durability is 0, break
execute if score #durability Temp matches 0 run return run function exigence:player/utility/armor/break/leggings
#----------------------------------------------------------------------------------------------------

# If durability is 1, warn
execute if score #durability Temp matches 1 run tellraw @s [{text:"♦ Item ",color:"yellow"},{nbt:"equipment.legs.components.'minecraft:custom_name'",source:"entity",entity:"@s",interpret:true},{text:" is close to breaking!",color:"yellow"}]

# Set new durability via modifier
execute if score #durability Temp matches 9 run return run item modify entity @s armor.legs exigence:durability/9
execute if score #durability Temp matches 8 run return run item modify entity @s armor.legs exigence:durability/8
execute if score #durability Temp matches 7 run return run item modify entity @s armor.legs exigence:durability/7
execute if score #durability Temp matches 6 run return run item modify entity @s armor.legs exigence:durability/6
execute if score #durability Temp matches 5 run return run item modify entity @s armor.legs exigence:durability/5
execute if score #durability Temp matches 4 run return run item modify entity @s armor.legs exigence:durability/4
execute if score #durability Temp matches 3 run return run item modify entity @s armor.legs exigence:durability/3
execute if score #durability Temp matches 2 run return run item modify entity @s armor.legs exigence:durability/2
execute if score #durability Temp matches 1 run return run item modify entity @s armor.legs exigence:durability/1