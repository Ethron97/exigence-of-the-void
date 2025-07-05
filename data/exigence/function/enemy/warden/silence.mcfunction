# Called from anger_update

## CONSTRAINTS
#   AS warden

#===============================================================================================================

tag @s add Silenced

execute as @s run data modify entity @s Silent set value true

#say silenced
