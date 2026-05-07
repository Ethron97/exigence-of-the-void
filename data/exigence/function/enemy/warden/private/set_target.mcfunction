# Sets the anger target of warden

## CONSTRAINTS
#   AS warden

## INPUT
#   UUID

#====================================================================================================

# DEBUG
$execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3) Setting target $(UUID)

$data merge entity @s {anger:{suspects:[{uuid:$(UUID),anger:150}]}}
