# Iterate key/door animation
#   Interation begins by insert_key

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return run say Cancel opening (eye) due to game cancel
#----------------------------------------------------------------------------------------------------

execute if score toggle.vault debug matches 1 if score debug.level debug matches 4.. run say (D4) Opening (eye)

# Handle key steps as it moves into the lock
#   Next iteration step called by opening_at if needed
#   Position is just anywhere near the handle
execute in minecraft:overworld positioned -373.00 153.39 6.61 as @n[type=minecraft:item_display,tag=VaultHandle,tag=Vault_eye,distance=..10] at @s \
run function exigence:door/vault/eye/opening_at
