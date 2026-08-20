# Illuminate the path to the next ardor ember

## CONSTRAINTS
#   AS ardor ember item

#====================================================================================================

tag @s add Illuminated

# Inform players
tellraw @a[tag=ActivePlayer,scores={dead=0}] [{sprite:"minecraft:item/filled_map",atlas:"items",color:"white"}\
,{text:" The location of the next ",color:"gray"},{text:"🔥 Ardor Ember 🔥",color:"aqua"},{text:" has been revealed!",color:"gray"}]

# Sound effect
execute at @s run playsound minecraft:entity.villager.work_cartographer player @a[tag=ActivePlayer,scores={dead=0}] ~ ~1000 ~ 1000 1
