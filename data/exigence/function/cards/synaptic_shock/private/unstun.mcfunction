# Unstun an enemy

## CONSTRAINTS
#   AS Enemy

#====================================================================================================

# Re-add ai/ remove attribute
data modify entity @s[type=!minecraft:warden] NoAI set value false
attribute @s[type=minecraft:warden] movement_speed modifier remove exigence:stun

# Remove ETICK if not ravager/warden
tag @s[type=!minecraft:ravager,type=!minecraft:warden] remove ETICK
