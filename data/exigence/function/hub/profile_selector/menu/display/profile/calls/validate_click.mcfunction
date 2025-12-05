# Validate player as they click, before any display checks

## CONSTRAINTS
#   AS player

#=============================================================================================================

execute if entity @s[tag=Joined] run playsound block.fire.extinguish ui @s ~ ~ ~
tellraw @s[tag=Joined] {text:"✖ You cannot do this while awaiting a co-op profile!",color:"red"}
execute if entity @s[tag=Joined] run return fail

return 1