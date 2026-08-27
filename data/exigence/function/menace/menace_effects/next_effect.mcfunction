# Give next effect to players in the dungeon

#====================================================================================================

scoreboard players add effect.score game.dungeon.menace 1
execute if score effect.score game.dungeon.menace matches 1 run effect give @a[tag=ActivePlayer] minecraft:hunger infinite 0
execute if score effect.score game.dungeon.menace matches 2 run effect give @a[tag=ActivePlayer] minecraft:darkness infinite 0
execute if score effect.score game.dungeon.menace matches 3 run effect give @a[tag=ActivePlayer] minecraft:wither infinite 0
execute if score effect.score game.dungeon.menace matches 4 run effect give @a[tag=ActivePlayer] minecraft:wither infinite 1
execute if score effect.score game.dungeon.menace matches 5 run effect give @a[tag=ActivePlayer] minecraft:wither infinite 2
execute if score effect.score game.dungeon.menace matches 6 run effect give @a[tag=ActivePlayer] minecraft:wither infinite 3
execute if score effect.score game.dungeon.menace matches 7 run effect give @a[tag=ActivePlayer] minecraft:wither infinite 4

# Update bar
scoreboard players set effect.cooldown game.dungeon.menace 60
function exigence:bossbar/deck/update_bar_max_menace
