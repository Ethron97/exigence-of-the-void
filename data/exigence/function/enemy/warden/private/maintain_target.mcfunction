# Sets the anger target of warden

## CONSTRAINTS
#   AS warden

## INPUT
#   WITH entity @s data.custom_data

#====================================================================================================

# DEBUG
execute if score toggle.enemy debug matches 1 if score debug.level debug matches 4.. run say (D4) Refreshing target

# Store target in entity data, as well as anger
$data merge entity @s {anger:{suspects:[{uuid:$(target),anger:150}]}}
