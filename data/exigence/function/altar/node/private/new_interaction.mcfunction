# Setup new interaction

## CONSTRAINTS
#   AS interaction

## INPUT
#   SCORE #compare node.id

#====================================================================================================

data merge entity @s {width:2.8,height:1.5,Tags:["AltarInteract"],response:1b}

# Assign id
scoreboard players operation @s node.id = #compare node.id

# Assign vault code (for level 3 vaults)
execute if score @s node.property.altar.vault_code matches 1.. run scoreboard players operation @s game.entity.vault_code = @s node.property.altar.vault_code
