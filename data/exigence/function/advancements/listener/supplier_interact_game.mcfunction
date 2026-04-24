
# Return if the game is not active
execute unless entity @s[tag=ActivePlayer] unless score game.is_active game.state matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Advance dialogue
execute at @s as @e[type=minecraft:villager,tag=NPC_Supplier,tag=Game,distance=..16,limit=1] run function exigence:npc/game/dialogue_supplier

# Reset advancement
advancement revoke @s only exigence:listener/supplier_interact_game

#say supplier interact