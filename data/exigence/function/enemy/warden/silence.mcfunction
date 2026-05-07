# Called from anger_update

## CONSTRAINTS
#   AS warden

#====================================================================================================

tag @s add Silenced

execute as @s run data modify entity @s Silent set value true

execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3) Silenced
