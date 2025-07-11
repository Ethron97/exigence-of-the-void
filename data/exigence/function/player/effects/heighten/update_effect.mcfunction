# Updates the effect given on the player hud to match the current heighten level

# Only needs to be called when heighten is used or gained

#============================================================================================================

# Clear so we can apply a lower level if needed
effect clear @a[tag=ActivePlayer] haste

execute as @a[tag=ActivePlayer,scores={dead=0,mod_Heighten=1}] run effect give @s haste infinite 0
execute as @a[tag=ActivePlayer,scores={dead=0,mod_Heighten=2}] run effect give @s haste infinite 1
execute as @a[tag=ActivePlayer,scores={dead=0,mod_Heighten=3}] run effect give @s haste infinite 2
execute as @a[tag=ActivePlayer,scores={dead=0,mod_Heighten=4}] run effect give @s haste infinite 3
execute as @a[tag=ActivePlayer,scores={dead=0,mod_Heighten=5..}] run effect give @s haste infinite 4
