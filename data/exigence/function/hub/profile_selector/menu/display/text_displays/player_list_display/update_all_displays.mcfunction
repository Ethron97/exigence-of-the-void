# Update every player list display (resummon)

#=============================================================================================================

#say Update all displays

# Get all slot displays with matching coop_profile_id
execute in exigence:hub positioned 999.5 128 6.5 as @e[distance=..200,type=item_display,tag=SlotDisplay,tag=Coop] at @s \
run function exigence:hub/profile_selector/menu/display/profile/effects/refresh_coop_statuses with entity @s item.components."minecraft:custom_data"
