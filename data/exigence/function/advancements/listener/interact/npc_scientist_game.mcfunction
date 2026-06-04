
# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# Advancee dialogue
execute at @s as @e[type=minecraft:villager,tag=NPC_Scientist,tag=Game,distance=..16,limit=1] at @s run function exigence:npc/game/dialogue_scientist

# Reset advancement
advancement revoke @s only exigence:listener/interact/npc_scientist_game

#say itnereavt scientsit