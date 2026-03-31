#say untrigger loop
# We don't need this since it will just un-trigger when the player leaves the area

say depcreated


# Unappear one appeared block
execute as @e[type=minecraft:marker,tag=Appeared,tag=Revealed,sort=random,limit=1] at @s run function exigence:mirror/hidden_blocks/hide_block

# Continue if there are more appeared blocks to hide
execute if data storage exigence:dungeon {is_active:1} if entity @e[type=minecraft:marker,tag=Appeared] run schedule function exigence:vault/artifact/artifacts/dust_of_appearance/private/untrigger_loop 20t append
