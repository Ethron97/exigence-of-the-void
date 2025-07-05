# Called by anger_update to update warden anger data

## CONSTRAINTS
#   AS warden

#=================================================================================================================

# Tag
tag @s add Aggroing

# Call sub function as each living player
execute as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:enemy/warden/private/set_target_a

# Remove local tag
tag @s remove Aggroing
