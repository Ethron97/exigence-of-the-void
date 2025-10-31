# Parent menu object, called with data to call sub menu

## CONSTRAINTS
# AT location to anchor the menu

## INPUT
#   STR rotation - eg [0.0f,0.0f]
#   STR menu_path - Path following exigence:menu/ to be called after this one

#=============================================================================================================

# Summon menu anchor
$summon minecraft:armor_stand ~ ~ ~ {Invisible:0b,Tags:["MenuAnchor"],NoGravity:1b,Rotation:$(Rotation)}

# Execute sub function at anchor
$execute at @e[distance=..1,type=minecraft:armor_stand,tag=MenuAnchor] run function exigence:menu/$(menu_path) {Rotation:'$(Rotation)'}

# Remove tags
tag @e[type=minecraft:item_display,tag=NewItemDisplays] remove NewItemDisplays

# Kill menu anchor
kill @e[distance=..1,type=minecraft:armor_stand,tag=MenuAnchor]
