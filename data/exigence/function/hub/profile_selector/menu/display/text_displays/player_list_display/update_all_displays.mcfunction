# Update every player list display (update, not resummon)

## INPUT
#   SCORE #player_id Temp

#====================================================================================================

#say Update all displays

# Get all slot displays with matching coop_profile_id
execute in exigence:hub positioned 999.5 128 6.5 as @e[type=item_display,tag=SlotDisplay,tag=Coop,distance=..200] \
at @s run function exigence:hub/profile_selector/menu/display/profile/effects/refresh_coop_statuses
