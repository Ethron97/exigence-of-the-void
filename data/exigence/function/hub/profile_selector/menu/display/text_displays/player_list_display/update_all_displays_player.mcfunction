# Update every player list display (update, not resummon) for a SPECIFIC PLAYER

## INPUT
#   SCORE #player_id Temp

#====================================================================================================

#say (D3) Update all displays PLAYER

execute in exigence:hub as @e[x=-98,y=0,z=798,dx=244,dy=256,dz=16,type=minecraft:text_display,tag=CoopPlayerDisplay] \
if score @s hub.entity.player_id = #player_id Temp run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/private/update_display
