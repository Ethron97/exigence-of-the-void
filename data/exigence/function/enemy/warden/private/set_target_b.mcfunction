# Sets the anger target of warden

## INPUT
#   UUID

#===============================================================================================================

# DEBUG
#$say Setting target $(UUID)

$execute as @e[type=minecraft:warden,tag=Aggroing] run data merge entity @s {anger:{suspects:[{uuid:$(UUID),anger:150}]}}
