# Scheduled from start_loading_sequence
# Load vault

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Load vault
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=VaultNode\
,tag=Vault_spire] \
run function exigence:vault/node/load