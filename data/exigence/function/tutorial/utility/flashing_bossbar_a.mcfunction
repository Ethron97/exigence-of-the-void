# Causes bossbar to flash between 2 colors

## INPUT
#   STR text
#   STR final_text
#   STR(color) color0
#   STR(color) color1
#   BIT(0-1) active_color
#   INT interval in ticks
#   INT flashes

#=============================================================================================================

#$say a $(text) $(color0) $(color1) $(active_color) $(interval) $(flashes)

# Do the flash
$execute if score $(active_color) number matches 0 if score $(flashes) number matches ..1 run bossbar set exigence:tutorial name {text:'$(final_text)',color:'$(color0)'}
$execute if score $(active_color) number matches 1 if score $(flashes) number matches ..1 run bossbar set exigence:tutorial name {text:'$(final_text)',color:'$(color1)'}
$execute if score $(active_color) number matches 0 if score $(flashes) number matches 2.. run bossbar set exigence:tutorial name {text:'$(text)',color:'$(color0)'}
$execute if score $(active_color) number matches 1 if score $(flashes) number matches 2.. run bossbar set exigence:tutorial name {text:'$(text)',color:'$(color1)'}
$execute if score $(active_color) number matches 0 run bossbar set exigence:tutorial color $(color0)
$execute if score $(active_color) number matches 1 run bossbar set exigence:tutorial color $(color1)

$scoreboard players set temp Temp $(flashes)
scoreboard players remove temp Temp 1
execute if score temp Temp matches ..0 run return 1

# Flip the color bit
$scoreboard players set temp2 Temp $(active_color)
scoreboard players add temp2 Temp 1
scoreboard players operation temp2 Temp %= 2 number

$data modify storage exigence:tutorial flashing_bossbar.text set value '$(text)'
$data modify storage exigence:tutorial flashing_bossbar.final_text set value '$(final_text)'
$data modify storage exigence:tutorial flashing_bossbar.color0 set value $(color0)
$data modify storage exigence:tutorial flashing_bossbar.color1 set value $(color1)
execute store result storage exigence:tutorial flashing_bossbar.active_color int 1 run scoreboard players get temp2 Temp
$data modify storage exigence:tutorial flashing_bossbar.interval set value $(interval)
execute store result storage exigence:tutorial flashing_bossbar.flashes int 1 run scoreboard players get temp Temp

$schedule function exigence:tutorial/utility/flashing_bossbar_b $(interval)t
