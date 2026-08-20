# Sets the anger target of warden

## INPUT
#   UUID

#====================================================================================================

# DEBUG
$execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3) Setting target $(UUID)

$execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:warden,tag=Aggroing] run data merge entity @s {anger:{suspects:[{uuid:$(UUID),anger:150}]}}
