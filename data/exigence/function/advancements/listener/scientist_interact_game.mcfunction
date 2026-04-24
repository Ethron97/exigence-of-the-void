
# Return if game is not active
execute unless entity @s[tag=ActivePlayer] unless score game.is_active game.state matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Advancee dialogue
execute at @s as @e[type=minecraft:villager,tag=NPC_Scientist,tag=Game,distance=..16,limit=1] run function exigence:npc/game/dialogue_scientist

# Reset advancement
advancement revoke @s only exigence:listener/scientist_interact_game

#say itnereavt scientsit