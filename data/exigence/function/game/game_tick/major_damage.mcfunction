# If player takes 5 hearts (100 damage) and is not dead, gain +1 red
#execute if entity @e[type=minecraft:player,tag=ActivePlayer] as @a[tag=ActivePlayer] if score @s game.player.damage_taken matches 100.. run function exigence:resources/try_generate {green:0,red:1,aqua:0}

# If player takes any damage and has PanicBoots, trigger panic boots
execute if entity @e[type=minecraft:player,tag=ActivePlayer] as @a[tag=ActivePlayer] if score @s game.player.damage_taken matches 1.. if score @s game.player.mod.panic_boots matches 1.. run function exigence:player/modifiers/panic_boots
execute if entity @e[type=minecraft:player,tag=ActivePlayer] as @a[tag=ActivePlayer] run scoreboard players set @s game.player.damage_taken 0
