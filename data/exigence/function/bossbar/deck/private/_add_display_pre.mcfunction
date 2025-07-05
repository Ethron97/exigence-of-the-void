## CONSTRAINTS
#   AS ArmorStand Card, !Played

#======================================================================================

execute as @s[scores={Rarity=4},tag=!Spellbound] run function exigence:bossbar/deck/private/add_display {color:"light_purple",italic:"false"}
execute as @s[scores={Rarity=4},tag=Spellbound] run function exigence:bossbar/deck/private/add_display {color:"light_purple",italic:"true"}

execute as @s[scores={Rarity=3},tag=!Spellbound] run function exigence:bossbar/deck/private/add_display {color:"blue",italic:"false"}
execute as @s[scores={Rarity=3},tag=Spellbound] run function exigence:bossbar/deck/private/add_display {color:"blue",italic:"true"}

execute as @s[scores={Rarity=2},tag=!Spellbound] run function exigence:bossbar/deck/private/add_display {color:"green",italic:"false"}
execute as @s[scores={Rarity=2},tag=Spellbound] run function exigence:bossbar/deck/private/add_display {color:"green",italic:"true"}

execute as @s[scores={Rarity=1},tag=!Spellbound] run function exigence:bossbar/deck/private/add_display {color:"dark_aqua",italic:"false"}
execute as @s[scores={Rarity=1},tag=Spellbound] run function exigence:bossbar/deck/private/add_display {color:"dark_aqua",italic:"true"}
