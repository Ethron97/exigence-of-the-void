# End endless

## CONSTRAINTS
#   AS player (tag=Endless)

#====================================================================================================

# DEBUG
execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Hub endless end

# Call sub-endless function based on trial
execute if score @s game.player.vault_code matches 1 run function exigence:door/vault/bolt/trial/loss/_endless_end
#...
