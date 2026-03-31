
# Return if the game is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1
#----------------------------------------------------------------------------------------------------

# Advance dialogue
execute at @s as @n[type=minecraft:villager,tag=NPC_Supplier,tag=Game,distance=..32] run function exigence:npc/game/dialogue_supplier

# Reset advancement
advancement revoke @s only exigence:listener/supplier_interact_game

#say supplier interact