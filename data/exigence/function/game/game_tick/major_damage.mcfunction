# If player takes 5 hearts (100 damage) and is not dead, gain +1 red
#execute if entity @e[type=minecraft:player,tag=ActivePlayer] as @a[tag=ActivePlayer] if score @s damageTaken matches 100.. run function exigence:resources/try_generate {green:0,red:1,aqua:0}

# If player takes any damage and has PanicBoots, trigger panic boots
execute if entity @e[type=minecraft:player,tag=ActivePlayer] as @a[tag=ActivePlayer] if score @s damageTaken matches 1.. if score @s mod_PanicBoots matches 1.. run function exigence:player/modifiers/panic_boots
execute if entity @e[type=minecraft:player,tag=ActivePlayer] as @a[tag=ActivePlayer] run scoreboard players set @s damageTaken 0
