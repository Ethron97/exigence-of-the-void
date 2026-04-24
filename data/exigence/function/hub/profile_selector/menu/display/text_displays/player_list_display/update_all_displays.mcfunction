# Update every player list display (update, not resummon)

## INPUT
#   SCORE #player_id Temp

#====================================================================================================

#say (D3) Update all displays

# Get all slot displays with matching coop_profile_id
execute in exigence:hub as @e[x=-98,y=0,z=798,dx=244,dy=256,dz=16,type=minecraft:item_display,tag=SlotDisplay,tag=Coop] \
at @s run function exigence:hub/profile_selector/menu/display/profile/effects/refresh_coop_statuses
