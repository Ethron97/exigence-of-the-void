# Update coop_profile_id on ALL slot displays

## INPUT
#   INT old_coop_id
#   SCORE #new_main_id Temp

#====================================================================================================

$execute in exigence:hub as @e[x=-98,y=0,z=798,dx=244,dy=256,dz=16,type=minecraft:item_display\
,tag=SlotDisplay,nbt={item:{components:{"minecraft:custom_data":{coop_profile_id:$(old_coop_id)}}}}] \
run function exigence:profile/profile_node/private/update_slot_b
