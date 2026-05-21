# Call as grown berry bush

## CONSTRAINTS
#   AS berry node
#   AT ravager

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Oof ouch my eaten

# Increase tracker
scoreboard players add #berries_eaten Temp 1

# Remove berries from bush
function exigence:botany/node/berry_bush_ungrow

# Playsound at berry bush
execute at @s run playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1
# Playsound at ravager
playsound minecraft:entity.generic.eat neutral @a ~ ~ ~ 1 1