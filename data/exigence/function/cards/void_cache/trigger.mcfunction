# Called by game_on after the rest of everything is processed and stuff

# Create cache at a random echo node on level 4, difficulty 2+
execute as @e[type=minecraft:armor_stand,tag=EchoNode,tag=!ChosenEchoNode,sort=random,limit=1,scores={EchoDifficulty=42..}] at @s run function exigence:cards/void_cache/private/create_cache
