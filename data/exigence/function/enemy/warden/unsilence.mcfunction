# Called from anger_update

## CONSTRAINTS
#   AS warden

#===============================================================================================================

tag @s remove Silenced

execute as @s run data modify entity @s Silent set value false

# add Discovered so we can toggle silence when player isn't on their level (depcreated)
tag @s add Discovered

#say unslienced
