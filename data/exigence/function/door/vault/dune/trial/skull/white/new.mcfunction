# New normal projectile for trial

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) New white skull

# Move DunePosA to random rim location
function exigence:door/vault/dune/trial/random_pos/rim_pos

# Summon item display
execute as @e[type=minecraft:marker,tag=DunePosA,distance=..24] at @s run function exigence:door/vault/dune/trial/skull/white/m_display with entity @s

