# Sets the anger target of warden

## CONSTRAINTS
#   AS warden

## INPUT
#   UUID

#===============================================================================================================

# DEBUG
#$say Setting target $(UUID)

$data merge entity @s {anger:{suspects:[{uuid:$(UUID),anger:150}]}}
