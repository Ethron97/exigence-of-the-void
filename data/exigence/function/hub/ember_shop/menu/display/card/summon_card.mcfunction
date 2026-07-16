
## CONSTRAINTS
#   AT position

## INPUT
#   STR card_name - simple name to match the directory

#====================================================================================================

$function exigence:cards/summon_card {card_name:$(card_name)}

# Old
#execute if entity @a[tag=!EmberShopping,gamemode=creative] run tp @e[type=minecraft:item,tag=NCS] @p[gamemode=creative]
#execute if entity @a[tag=EmberShopping] run tp @e[type=minecraft:item,tag=NCS] @p[tag=EmberShopping,tag=!CoopEmberShopping]


tag @e[type=minecraft:item,tag=NCS,distance=..1] remove NCS
