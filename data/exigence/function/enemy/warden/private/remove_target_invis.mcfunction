# Sets the anger target of warden

## CONSTRAINTS
#   AS warden

## INPUT
#   DATA target

#====================================================================================================

# DEBUG
$execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3) Ensuring target has no invis $(UUID)

# If target player is invis, break invis
$execute as @p[nbt={uuid:$(target)},predicate=exigence:effects/invis] run function exigence:player/effects/invis/break_from_warden
