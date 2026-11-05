# Setup all menus

## CONSTRAINTS
#   IN exigence:hub

#====================================================================================================
execute unless dimension exigence:hub run return run say (C) Failed to reset trial menus: not in hub
#----------------------------------------------------------------------------------------------------

# Clear all menus
kill @e[x=-27,y=168,z=-27,dx=65,dy=25,dz=65,type=#exigence:display,tag=TrialDisplay]
kill @e[x=-27,y=168,z=-27,dx=65,dy=25,dz=65,type=minecraft:interaction,tag=TrialButtonInteraction]

execute positioned 16.5 184.5 -9.0 run function exigence:hub/hub_trials/node/bolt/setup_menu
execute positioned 0.5 184.5 -9.0 run function exigence:hub/hub_trials/node/dune/setup_menu
execute positioned -15.5 184.5 -9.0 run function exigence:hub/hub_trials/node/silence/setup_menu
execute positioned -15.5 184.5 -8.0 run function exigence:hub/hub_trials/node/eye/setup_menu
execute positioned 0.5 184.5 -8.0 run function exigence:hub/hub_trials/node/spire/setup_menu
execute positioned 16.5 184.5 -8.0 run function exigence:hub/hub_trials/node/flow/setup_menu
