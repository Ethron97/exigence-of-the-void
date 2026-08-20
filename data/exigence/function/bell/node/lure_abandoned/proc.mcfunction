# Trigger the lure

## CONSTRAINTS
#   AS bell node

#====================================================================================================

execute if score toggle.bell debug matches 1 if score debug.level debug matches 3.. run say (D3 Bell) Attract nearby ravagers

# Damage the ravager above, as the snowgolem
#   Should make any ravagers within 32 blocks soft-aggro onto the snow golem
execute at @s run damage @n[type=minecraft:ravager,tag=BellLure,distance=..2] 0 arrow by @n[type=minecraft:snow_golem,tag=BellLure,distance=..2]
