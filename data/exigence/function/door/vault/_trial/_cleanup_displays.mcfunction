# Cleans up anti-chamber displays

## INPUT
#   INT vault_code
#   STR vault_name

#====================================================================================================

# DEBUG
$execute if score toggle.vault debug matches 1 if score debug.level debug matches 4.. run say (D4) Cleanup displays $(vault_name)

$kill @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=#exigence:display,scores={game.entity.vault_code=$(vault_code)}]
$kill @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:interaction,scores={game.entity.vault_code=$(vault_code)}]

# Deactivate the other altar so it can't be lit
$execute as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={game.node.node_state=0,node.property.altar.vault_code=$(vault_code)}] run function exigence:altar/node/deactivate

# Add "ChooseLock" tag to the other altar so the interact particles go away
#$tag @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.altar.vault_code=$(vault_code)}] add ChooseLock
