# Update the deck bossbar with correct colors

## CALLS
#   game_on
#   spellbind
#   spellsling
#   draw_card

#======================================================================================

# Reset data
#   Initialize with length 1 so off-by-one counting is eaiser
data modify storage exigence:bossbar_deck cards set value ['']

# Call in order rarity,spellbound
execute as @e[type=minecraft:armor_stand,tag=Card,tag=!Played] run function exigence:bossbar/deck/private/_add_display_pre

# Create gray card for each played card (order does not matter)
execute as @e[type=minecraft:armor_stand,tag=Card,tag=Played] run function exigence:bossbar/deck/private/add_display {color:"dark_gray",italic:"false"}

# Copy array data to individual keys
#   If there is data, copy it
#   If there is no data, set corresponding key to blank
function exigence:bossbar/deck/private/reset_keys

data modify storage exigence:bossbar_deck card_1 set from storage exigence:bossbar_deck cards[1]
data modify storage exigence:bossbar_deck card_2 set from storage exigence:bossbar_deck cards[2]
data modify storage exigence:bossbar_deck card_3 set from storage exigence:bossbar_deck cards[3]
data modify storage exigence:bossbar_deck card_4 set from storage exigence:bossbar_deck cards[4]
data modify storage exigence:bossbar_deck card_5 set from storage exigence:bossbar_deck cards[5]
data modify storage exigence:bossbar_deck card_6 set from storage exigence:bossbar_deck cards[6]
data modify storage exigence:bossbar_deck card_7 set from storage exigence:bossbar_deck cards[7]
data modify storage exigence:bossbar_deck card_8 set from storage exigence:bossbar_deck cards[8]
data modify storage exigence:bossbar_deck card_9 set from storage exigence:bossbar_deck cards[9]
data modify storage exigence:bossbar_deck card_10 set from storage exigence:bossbar_deck cards[10]
data modify storage exigence:bossbar_deck card_11 set from storage exigence:bossbar_deck cards[11]
data modify storage exigence:bossbar_deck card_12 set from storage exigence:bossbar_deck cards[12]
data modify storage exigence:bossbar_deck card_13 set from storage exigence:bossbar_deck cards[13]
data modify storage exigence:bossbar_deck card_14 set from storage exigence:bossbar_deck cards[14]
data modify storage exigence:bossbar_deck card_15 set from storage exigence:bossbar_deck cards[15]
data modify storage exigence:bossbar_deck card_16 set from storage exigence:bossbar_deck cards[16]
data modify storage exigence:bossbar_deck card_17 set from storage exigence:bossbar_deck cards[17]
data modify storage exigence:bossbar_deck card_18 set from storage exigence:bossbar_deck cards[18]
data modify storage exigence:bossbar_deck card_19 set from storage exigence:bossbar_deck cards[19]
data modify storage exigence:bossbar_deck card_20 set from storage exigence:bossbar_deck cards[20]
data modify storage exigence:bossbar_deck card_21 set from storage exigence:bossbar_deck cards[21]
data modify storage exigence:bossbar_deck card_22 set from storage exigence:bossbar_deck cards[22]
data modify storage exigence:bossbar_deck card_23 set from storage exigence:bossbar_deck cards[23]
data modify storage exigence:bossbar_deck card_24 set from storage exigence:bossbar_deck cards[24]
data modify storage exigence:bossbar_deck card_25 set from storage exigence:bossbar_deck cards[25]
data modify storage exigence:bossbar_deck card_26 set from storage exigence:bossbar_deck cards[26]
data modify storage exigence:bossbar_deck card_27 set from storage exigence:bossbar_deck cards[27]
data modify storage exigence:bossbar_deck card_28 set from storage exigence:bossbar_deck cards[28]
data modify storage exigence:bossbar_deck card_29 set from storage exigence:bossbar_deck cards[29]
data modify storage exigence:bossbar_deck card_30 set from storage exigence:bossbar_deck cards[30]
data modify storage exigence:bossbar_deck card_31 set from storage exigence:bossbar_deck cards[31]
data modify storage exigence:bossbar_deck card_32 set from storage exigence:bossbar_deck cards[32]
data modify storage exigence:bossbar_deck card_33 set from storage exigence:bossbar_deck cards[33]
data modify storage exigence:bossbar_deck card_34 set from storage exigence:bossbar_deck cards[34]
data modify storage exigence:bossbar_deck card_35 set from storage exigence:bossbar_deck cards[35]
data modify storage exigence:bossbar_deck card_36 set from storage exigence:bossbar_deck cards[36]
data modify storage exigence:bossbar_deck card_37 set from storage exigence:bossbar_deck cards[37]
data modify storage exigence:bossbar_deck card_38 set from storage exigence:bossbar_deck cards[38]
data modify storage exigence:bossbar_deck card_39 set from storage exigence:bossbar_deck cards[39]
data modify storage exigence:bossbar_deck card_40 set from storage exigence:bossbar_deck cards[40]
data modify storage exigence:bossbar_deck card_41 set from storage exigence:bossbar_deck cards[41]
data modify storage exigence:bossbar_deck card_42 set from storage exigence:bossbar_deck cards[42]
data modify storage exigence:bossbar_deck card_43 set from storage exigence:bossbar_deck cards[43]

# Update title
function exigence:bossbar/deck/update_title with storage exigence:bossbar_deck
