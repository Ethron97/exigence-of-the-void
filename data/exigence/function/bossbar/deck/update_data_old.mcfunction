# Get number of cards
# "#highest" is the decksize, hidden value created at process_deck.process_card.summon_card
#▌▌▌
# call from draw_card and game_on

# First reset all slots
data modify storage exigence:bossbar_deck card_1 set value {text:""}
data modify storage exigence:bossbar_deck card_2 set value {text:""}
data modify storage exigence:bossbar_deck card_3 set value {text:""}
data modify storage exigence:bossbar_deck card_4 set value {text:""}
data modify storage exigence:bossbar_deck card_5 set value {text:""}
data modify storage exigence:bossbar_deck card_6 set value {text:""}
data modify storage exigence:bossbar_deck card_7 set value {text:""}
data modify storage exigence:bossbar_deck card_8 set value {text:""}
data modify storage exigence:bossbar_deck card_9 set value {text:""}
data modify storage exigence:bossbar_deck card_10 set value {text:""}
data modify storage exigence:bossbar_deck card_11 set value {text:""}
data modify storage exigence:bossbar_deck card_12 set value {text:""}
data modify storage exigence:bossbar_deck card_13 set value {text:""}
data modify storage exigence:bossbar_deck card_14 set value {text:""}
data modify storage exigence:bossbar_deck card_15 set value {text:""}
data modify storage exigence:bossbar_deck card_16 set value {text:""}
data modify storage exigence:bossbar_deck card_17 set value {text:""}
data modify storage exigence:bossbar_deck card_18 set value {text:""}
data modify storage exigence:bossbar_deck card_19 set value {text:""}
data modify storage exigence:bossbar_deck card_20 set value {text:""}
data modify storage exigence:bossbar_deck card_21 set value {text:""}
data modify storage exigence:bossbar_deck card_22 set value {text:""}
data modify storage exigence:bossbar_deck card_23 set value {text:""}
data modify storage exigence:bossbar_deck card_24 set value {text:""}
data modify storage exigence:bossbar_deck card_25 set value {text:""}
data modify storage exigence:bossbar_deck card_26 set value {text:""}
data modify storage exigence:bossbar_deck card_27 set value {text:""}
data modify storage exigence:bossbar_deck card_28 set value {text:""}
data modify storage exigence:bossbar_deck card_29 set value {text:""}
data modify storage exigence:bossbar_deck card_30 set value {text:""}
data modify storage exigence:bossbar_deck card_31 set value {text:""}
data modify storage exigence:bossbar_deck card_32 set value {text:""}
data modify storage exigence:bossbar_deck card_33 set value {text:""}
data modify storage exigence:bossbar_deck card_34 set value {text:""}
data modify storage exigence:bossbar_deck card_35 set value {text:""}
data modify storage exigence:bossbar_deck card_36 set value {text:""}
data modify storage exigence:bossbar_deck card_37 set value {text:""}
data modify storage exigence:bossbar_deck card_38 set value {text:""}
data modify storage exigence:bossbar_deck card_39 set value {text:""}
data modify storage exigence:bossbar_deck card_40 set value {text:""}
data modify storage exigence:bossbar_deck card_41 set value {text:""}
data modify storage exigence:bossbar_deck card_42 set value {text:""}
data modify storage exigence:bossbar_deck card_43 set value {text:""}

# For each card slot 1 to 40, update data only if the deck is that big in the first place
execute if score #highest game.deck matches 1.. if score .cards game.dungeon matches 1.. run data modify storage exigence:bossbar_deck card_1 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 1.. unless score .cards game.dungeon matches 1.. run data modify storage exigence:bossbar_deck card_1 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 2.. if score .cards game.dungeon matches 2.. run data modify storage exigence:bossbar_deck card_2 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 2.. unless score .cards game.dungeon matches 2.. run data modify storage exigence:bossbar_deck card_2 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 3.. if score .cards game.dungeon matches 3.. run data modify storage exigence:bossbar_deck card_3 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 3.. unless score .cards game.dungeon matches 3.. run data modify storage exigence:bossbar_deck card_3 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 4.. if score .cards game.dungeon matches 4.. run data modify storage exigence:bossbar_deck card_4 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 4.. unless score .cards game.dungeon matches 4.. run data modify storage exigence:bossbar_deck card_4 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 5.. if score .cards game.dungeon matches 5.. run data modify storage exigence:bossbar_deck card_5 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 5.. unless score .cards game.dungeon matches 5.. run data modify storage exigence:bossbar_deck card_5 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 6.. if score .cards game.dungeon matches 6.. run data modify storage exigence:bossbar_deck card_6 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 6.. unless score .cards game.dungeon matches 6.. run data modify storage exigence:bossbar_deck card_6 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 7.. if score .cards game.dungeon matches 7.. run data modify storage exigence:bossbar_deck card_7 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 7.. unless score .cards game.dungeon matches 7.. run data modify storage exigence:bossbar_deck card_7 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 8.. if score .cards game.dungeon matches 8.. run data modify storage exigence:bossbar_deck card_8 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 8.. unless score .cards game.dungeon matches 8.. run data modify storage exigence:bossbar_deck card_8 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 9.. if score .cards game.dungeon matches 9.. run data modify storage exigence:bossbar_deck card_9 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 9.. unless score .cards game.dungeon matches 9.. run data modify storage exigence:bossbar_deck card_9 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 10.. if score .cards game.dungeon matches 10.. run data modify storage exigence:bossbar_deck card_10 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 10.. unless score .cards game.dungeon matches 10.. run data modify storage exigence:bossbar_deck card_10 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 11.. if score .cards game.dungeon matches 11.. run data modify storage exigence:bossbar_deck card_11 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 11.. unless score .cards game.dungeon matches 11.. run data modify storage exigence:bossbar_deck card_11 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 12.. if score .cards game.dungeon matches 12.. run data modify storage exigence:bossbar_deck card_12 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 12.. unless score .cards game.dungeon matches 12.. run data modify storage exigence:bossbar_deck card_12 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 13.. if score .cards game.dungeon matches 13.. run data modify storage exigence:bossbar_deck card_13 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 13.. unless score .cards game.dungeon matches 13.. run data modify storage exigence:bossbar_deck card_13 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 14.. if score .cards game.dungeon matches 14.. run data modify storage exigence:bossbar_deck card_14 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 14.. unless score .cards game.dungeon matches 14.. run data modify storage exigence:bossbar_deck card_14 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 15.. if score .cards game.dungeon matches 15.. run data modify storage exigence:bossbar_deck card_15 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 15.. unless score .cards game.dungeon matches 15.. run data modify storage exigence:bossbar_deck card_15 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 16.. if score .cards game.dungeon matches 16.. run data modify storage exigence:bossbar_deck card_16 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 16.. unless score .cards game.dungeon matches 16.. run data modify storage exigence:bossbar_deck card_16 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 17.. if score .cards game.dungeon matches 17.. run data modify storage exigence:bossbar_deck card_17 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 17.. unless score .cards game.dungeon matches 17.. run data modify storage exigence:bossbar_deck card_17 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 18.. if score .cards game.dungeon matches 18.. run data modify storage exigence:bossbar_deck card_18 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 18.. unless score .cards game.dungeon matches 18.. run data modify storage exigence:bossbar_deck card_18 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 19.. if score .cards game.dungeon matches 19.. run data modify storage exigence:bossbar_deck card_19 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 19.. unless score .cards game.dungeon matches 19.. run data modify storage exigence:bossbar_deck card_19 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 20.. if score .cards game.dungeon matches 20.. run data modify storage exigence:bossbar_deck card_20 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 20.. unless score .cards game.dungeon matches 20.. run data modify storage exigence:bossbar_deck card_20 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 21.. if score .cards game.dungeon matches 21.. run data modify storage exigence:bossbar_deck card_21 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 21.. unless score .cards game.dungeon matches 21.. run data modify storage exigence:bossbar_deck card_21 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 22.. if score .cards game.dungeon matches 22.. run data modify storage exigence:bossbar_deck card_22 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 22.. unless score .cards game.dungeon matches 22.. run data modify storage exigence:bossbar_deck card_22 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 23.. if score .cards game.dungeon matches 23.. run data modify storage exigence:bossbar_deck card_23 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 23.. unless score .cards game.dungeon matches 23.. run data modify storage exigence:bossbar_deck card_23 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 24.. if score .cards game.dungeon matches 24.. run data modify storage exigence:bossbar_deck card_24 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 24.. unless score .cards game.dungeon matches 24.. run data modify storage exigence:bossbar_deck card_24 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 25.. if score .cards game.dungeon matches 25.. run data modify storage exigence:bossbar_deck card_25 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 25.. unless score .cards game.dungeon matches 25.. run data modify storage exigence:bossbar_deck card_25 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 26.. if score .cards game.dungeon matches 26.. run data modify storage exigence:bossbar_deck card_26 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 26.. unless score .cards game.dungeon matches 26.. run data modify storage exigence:bossbar_deck card_26 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 27.. if score .cards game.dungeon matches 27.. run data modify storage exigence:bossbar_deck card_27 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 27.. unless score .cards game.dungeon matches 27.. run data modify storage exigence:bossbar_deck card_27 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 28.. if score .cards game.dungeon matches 28.. run data modify storage exigence:bossbar_deck card_28 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 28.. unless score .cards game.dungeon matches 28.. run data modify storage exigence:bossbar_deck card_28 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 29.. if score .cards game.dungeon matches 29.. run data modify storage exigence:bossbar_deck card_29 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 29.. unless score .cards game.dungeon matches 29.. run data modify storage exigence:bossbar_deck card_29 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 30.. if score .cards game.dungeon matches 30.. run data modify storage exigence:bossbar_deck card_30 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 30.. unless score .cards game.dungeon matches 30.. run data modify storage exigence:bossbar_deck card_30 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 31.. if score .cards game.dungeon matches 31.. run data modify storage exigence:bossbar_deck card_31 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 31.. unless score .cards game.dungeon matches 31.. run data modify storage exigence:bossbar_deck card_31 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 32.. if score .cards game.dungeon matches 32.. run data modify storage exigence:bossbar_deck card_32 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 32.. unless score .cards game.dungeon matches 32.. run data modify storage exigence:bossbar_deck card_32 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 33.. if score .cards game.dungeon matches 33.. run data modify storage exigence:bossbar_deck card_33 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 33.. unless score .cards game.dungeon matches 33.. run data modify storage exigence:bossbar_deck card_33 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 34.. if score .cards game.dungeon matches 34.. run data modify storage exigence:bossbar_deck card_34 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 34.. unless score .cards game.dungeon matches 34.. run data modify storage exigence:bossbar_deck card_34 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 35.. if score .cards game.dungeon matches 35.. run data modify storage exigence:bossbar_deck card_35 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 35.. unless score .cards game.dungeon matches 35.. run data modify storage exigence:bossbar_deck card_35 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 36.. if score .cards game.dungeon matches 36.. run data modify storage exigence:bossbar_deck card_36 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 36.. unless score .cards game.dungeon matches 36.. run data modify storage exigence:bossbar_deck card_36 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 37.. if score .cards game.dungeon matches 37.. run data modify storage exigence:bossbar_deck card_37 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 37.. unless score .cards game.dungeon matches 37.. run data modify storage exigence:bossbar_deck card_37 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 38.. if score .cards game.dungeon matches 38.. run data modify storage exigence:bossbar_deck card_38 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 38.. unless score .cards game.dungeon matches 38.. run data modify storage exigence:bossbar_deck card_38 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 39.. if score .cards game.dungeon matches 39.. run data modify storage exigence:bossbar_deck card_39 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 39.. unless score .cards game.dungeon matches 39.. run data modify storage exigence:bossbar_deck card_39 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 40.. if score .cards game.dungeon matches 40.. run data modify storage exigence:bossbar_deck card_40 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 40.. unless score .cards game.dungeon matches 40.. run data modify storage exigence:bossbar_deck card_40 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 41.. if score .cards game.dungeon matches 41.. run data modify storage exigence:bossbar_deck card_41 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 41.. unless score .cards game.dungeon matches 41.. run data modify storage exigence:bossbar_deck card_41 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 42.. if score .cards game.dungeon matches 42.. run data modify storage exigence:bossbar_deck card_42 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 42.. unless score .cards game.dungeon matches 42.. run data modify storage exigence:bossbar_deck card_42 set value {text:"▌",color:"dark_gray"}

execute if score #highest game.deck matches 43.. if score .cards game.dungeon matches 43.. run data modify storage exigence:bossbar_deck card_43 set value {text:"▌",color:"white"}
execute if score #highest game.deck matches 43.. unless score .cards game.dungeon matches 43.. run data modify storage exigence:bossbar_deck card_43 set value {text:"▌",color:"dark_gray"}

function exigence:bossbar/deck/update_title with storage exigence:bossbar_deck