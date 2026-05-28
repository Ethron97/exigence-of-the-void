# Teleport entity to stored position

## CONSTRAINTS
#   AS ravager

#====================================================================================================

$execute if score toggle.enemy debug matches 1 if score debug.level debug matches 3.. run say (D3 Enemy) Tp return $(x) $(y) $(z) $(yaw) $(pitch)

$tp @s $(x) $(y) $(z) $(yaw) $(pitch)

scoreboard players reset @s game.ravager.aggro_status