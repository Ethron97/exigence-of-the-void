# Sub-function of interaction -> ring_resolve -> ring
#   Called if player has smash artifact

#====================================================================================================

# DEBUG
execute if score toggle.bell debug matches 1 if score debug.level debug matches 3.. run say (D3) Trigger ring bll smsh

# Increase Red resource by 2
execute as @p[tag=Ringing] run function exigence:resources/try_generate {green:0,red:2,aqua:0}

# Add tag so the bell does not return
tag @s add Smashed
