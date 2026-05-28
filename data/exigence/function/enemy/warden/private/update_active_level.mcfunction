# Update object level

## CONSTRAINTS
#   AS/AT Warden

#====================================================================================================

## SWITCH
execute if entity @s[x=-520,y=180,z=-287,dx=340,dy=200,dz=340] run return run scoreboard players set @s game.warden.active_level 4
execute if entity @s[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132] run return run scoreboard players set @s game.warden.active_level 3
execute if entity @s[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178] run return run scoreboard players set @s game.warden.active_level 2
execute if entity @s[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153] run return run scoreboard players set @s game.warden.active_level 1