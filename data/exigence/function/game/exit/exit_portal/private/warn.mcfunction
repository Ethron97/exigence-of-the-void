# Send warning to players

# Call if countdown is % 20

#====================================================================================================

## SWITCH
execute if score exit.portal.countdown tick_counter matches 200 run return run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 10...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 180 run return run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 9...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 160 run return run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 8...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 140 run return run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 7...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 120 run return run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 6...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 100 run return run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 5...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 80 run return run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 4...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 60 run return run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 3...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 40 run return run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 2...",color:"dark_purple"}
execute if score exit.portal.countdown tick_counter matches 20 run return run title @a[tag=ActivePlayer] subtitle {text:"Exit portal closing in 1...",color:"dark_purple"}
