# Sub-function of interaction -> ring_resolve -> ring
#   Called if player does not have smash artifact

#====================================================================================================

# DEBUG
execute if score toggle.bell debug matches 1 if score debug.level debug matches 3.. run say (D3) Trigger ring bll

# Increase Red resource by 1
execute as @p[tag=Ringing] run function exigence:resources/try_generate {green:0,red:1,aqua:0}
