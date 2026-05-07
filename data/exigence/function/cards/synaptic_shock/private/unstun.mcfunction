# Unstun an enemy

## CONSTRAINTS
#   AS Enemy

#====================================================================================================

# Re-add ai
data modify entity @s NoAI set value false

# Remove ETICK if not ravager/warden
tag @s[type=!minecraft:ravager,type=!minecraft:warden] remove ETICK
