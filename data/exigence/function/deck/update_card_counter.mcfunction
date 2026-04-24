# Recount remaining cards in the deck that are playable

scoreboard players set #temp Temp 0
execute as @e[type=minecraft:armor_stand,scores={game.deck=1..},tag=Card,tag=!Played,tag=!Spellbound] run scoreboard players add #temp Temp 1
scoreboard players operation .cards game.dungeon = #temp Temp