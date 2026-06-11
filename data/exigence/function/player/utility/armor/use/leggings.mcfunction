# Called from damage_all if the player has armor in this slot

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Try use LEGS

# Return if uses not found
execute unless data entity @s equipment.legs.components."minecraft:custom_data".uses run return fail
#----------------------------------------------------------------------------------------------------

# Get uses level
scoreboard players set #uses Temp 0
execute store result score #uses Temp run data get entity @s equipment.legs.components."minecraft:custom_data".uses 1

# Reduce uses by 1
scoreboard players remove #uses Temp 1

# If uses is 0, break
execute if score #uses Temp matches 0 run return run function exigence:player/utility/armor/break/leggings
#----------------------------------------------------------------------------------------------------

# If uses is 1, warn
execute if score #uses Temp matches 1 run tellraw @s [{text:"⚡ Item ",color:"yellow"},{nbt:"equipment.legs.components.'minecraft:custom_name'",source:"entity",entity:"@s",interpret:true},{text:" is close to breaking!",color:"yellow"}]

# Set new uses via modifier
execute if score #uses Temp matches 3 run return run item modify entity @s armor.legs exigence:uses/3
execute if score #uses Temp matches 2 run return run item modify entity @s armor.legs exigence:uses/2
execute if score #uses Temp matches 1 run return run item modify entity @s armor.legs exigence:uses/1