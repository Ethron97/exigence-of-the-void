# Break helmet

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Player) Break LEGGINGS

playsound minecraft:entity.item.break player @s ~ ~ ~ 1 1
tellraw @s [{text:"♦ Item ",color:"red"},{nbt:"equipment.legs.components.'minecraft:custom_name'",source:"entity",entity:"@s",interpret:true},{text:" broke!",color:"red"}]
item replace entity @s armor.legs with minecraft:air