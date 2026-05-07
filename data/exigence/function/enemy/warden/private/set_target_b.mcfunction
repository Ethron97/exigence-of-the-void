# Sets the anger target of warden

## INPUT
#   UUID

#====================================================================================================

# DEBUG
$execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3) Setting target $(UUID)

$execute as @e[type=minecraft:warden,tag=Aggroing] run data merge entity @s {anger:{suspects:[{uuid:$(UUID),anger:150}]}}
