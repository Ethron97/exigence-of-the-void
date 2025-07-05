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
execute if score #highest Deck matches 1.. if score Cards DungeonRun matches 1.. run data modify storage exigence:bossbar_deck card_1 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 1.. unless score Cards DungeonRun matches 1.. run data modify storage exigence:bossbar_deck card_1 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 2.. if score Cards DungeonRun matches 2.. run data modify storage exigence:bossbar_deck card_2 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 2.. unless score Cards DungeonRun matches 2.. run data modify storage exigence:bossbar_deck card_2 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 3.. if score Cards DungeonRun matches 3.. run data modify storage exigence:bossbar_deck card_3 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 3.. unless score Cards DungeonRun matches 3.. run data modify storage exigence:bossbar_deck card_3 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 4.. if score Cards DungeonRun matches 4.. run data modify storage exigence:bossbar_deck card_4 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 4.. unless score Cards DungeonRun matches 4.. run data modify storage exigence:bossbar_deck card_4 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 5.. if score Cards DungeonRun matches 5.. run data modify storage exigence:bossbar_deck card_5 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 5.. unless score Cards DungeonRun matches 5.. run data modify storage exigence:bossbar_deck card_5 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 6.. if score Cards DungeonRun matches 6.. run data modify storage exigence:bossbar_deck card_6 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 6.. unless score Cards DungeonRun matches 6.. run data modify storage exigence:bossbar_deck card_6 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 7.. if score Cards DungeonRun matches 7.. run data modify storage exigence:bossbar_deck card_7 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 7.. unless score Cards DungeonRun matches 7.. run data modify storage exigence:bossbar_deck card_7 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 8.. if score Cards DungeonRun matches 8.. run data modify storage exigence:bossbar_deck card_8 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 8.. unless score Cards DungeonRun matches 8.. run data modify storage exigence:bossbar_deck card_8 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 9.. if score Cards DungeonRun matches 9.. run data modify storage exigence:bossbar_deck card_9 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 9.. unless score Cards DungeonRun matches 9.. run data modify storage exigence:bossbar_deck card_9 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 10.. if score Cards DungeonRun matches 10.. run data modify storage exigence:bossbar_deck card_10 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 10.. unless score Cards DungeonRun matches 10.. run data modify storage exigence:bossbar_deck card_10 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 11.. if score Cards DungeonRun matches 11.. run data modify storage exigence:bossbar_deck card_11 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 11.. unless score Cards DungeonRun matches 11.. run data modify storage exigence:bossbar_deck card_11 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 12.. if score Cards DungeonRun matches 12.. run data modify storage exigence:bossbar_deck card_12 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 12.. unless score Cards DungeonRun matches 12.. run data modify storage exigence:bossbar_deck card_12 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 13.. if score Cards DungeonRun matches 13.. run data modify storage exigence:bossbar_deck card_13 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 13.. unless score Cards DungeonRun matches 13.. run data modify storage exigence:bossbar_deck card_13 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 14.. if score Cards DungeonRun matches 14.. run data modify storage exigence:bossbar_deck card_14 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 14.. unless score Cards DungeonRun matches 14.. run data modify storage exigence:bossbar_deck card_14 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 15.. if score Cards DungeonRun matches 15.. run data modify storage exigence:bossbar_deck card_15 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 15.. unless score Cards DungeonRun matches 15.. run data modify storage exigence:bossbar_deck card_15 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 16.. if score Cards DungeonRun matches 16.. run data modify storage exigence:bossbar_deck card_16 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 16.. unless score Cards DungeonRun matches 16.. run data modify storage exigence:bossbar_deck card_16 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 17.. if score Cards DungeonRun matches 17.. run data modify storage exigence:bossbar_deck card_17 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 17.. unless score Cards DungeonRun matches 17.. run data modify storage exigence:bossbar_deck card_17 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 18.. if score Cards DungeonRun matches 18.. run data modify storage exigence:bossbar_deck card_18 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 18.. unless score Cards DungeonRun matches 18.. run data modify storage exigence:bossbar_deck card_18 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 19.. if score Cards DungeonRun matches 19.. run data modify storage exigence:bossbar_deck card_19 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 19.. unless score Cards DungeonRun matches 19.. run data modify storage exigence:bossbar_deck card_19 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 20.. if score Cards DungeonRun matches 20.. run data modify storage exigence:bossbar_deck card_20 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 20.. unless score Cards DungeonRun matches 20.. run data modify storage exigence:bossbar_deck card_20 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 21.. if score Cards DungeonRun matches 21.. run data modify storage exigence:bossbar_deck card_21 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 21.. unless score Cards DungeonRun matches 21.. run data modify storage exigence:bossbar_deck card_21 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 22.. if score Cards DungeonRun matches 22.. run data modify storage exigence:bossbar_deck card_22 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 22.. unless score Cards DungeonRun matches 22.. run data modify storage exigence:bossbar_deck card_22 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 23.. if score Cards DungeonRun matches 23.. run data modify storage exigence:bossbar_deck card_23 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 23.. unless score Cards DungeonRun matches 23.. run data modify storage exigence:bossbar_deck card_23 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 24.. if score Cards DungeonRun matches 24.. run data modify storage exigence:bossbar_deck card_24 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 24.. unless score Cards DungeonRun matches 24.. run data modify storage exigence:bossbar_deck card_24 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 25.. if score Cards DungeonRun matches 25.. run data modify storage exigence:bossbar_deck card_25 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 25.. unless score Cards DungeonRun matches 25.. run data modify storage exigence:bossbar_deck card_25 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 26.. if score Cards DungeonRun matches 26.. run data modify storage exigence:bossbar_deck card_26 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 26.. unless score Cards DungeonRun matches 26.. run data modify storage exigence:bossbar_deck card_26 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 27.. if score Cards DungeonRun matches 27.. run data modify storage exigence:bossbar_deck card_27 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 27.. unless score Cards DungeonRun matches 27.. run data modify storage exigence:bossbar_deck card_27 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 28.. if score Cards DungeonRun matches 28.. run data modify storage exigence:bossbar_deck card_28 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 28.. unless score Cards DungeonRun matches 28.. run data modify storage exigence:bossbar_deck card_28 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 29.. if score Cards DungeonRun matches 29.. run data modify storage exigence:bossbar_deck card_29 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 29.. unless score Cards DungeonRun matches 29.. run data modify storage exigence:bossbar_deck card_29 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 30.. if score Cards DungeonRun matches 30.. run data modify storage exigence:bossbar_deck card_30 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 30.. unless score Cards DungeonRun matches 30.. run data modify storage exigence:bossbar_deck card_30 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 31.. if score Cards DungeonRun matches 31.. run data modify storage exigence:bossbar_deck card_31 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 31.. unless score Cards DungeonRun matches 31.. run data modify storage exigence:bossbar_deck card_31 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 32.. if score Cards DungeonRun matches 32.. run data modify storage exigence:bossbar_deck card_32 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 32.. unless score Cards DungeonRun matches 32.. run data modify storage exigence:bossbar_deck card_32 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 33.. if score Cards DungeonRun matches 33.. run data modify storage exigence:bossbar_deck card_33 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 33.. unless score Cards DungeonRun matches 33.. run data modify storage exigence:bossbar_deck card_33 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 34.. if score Cards DungeonRun matches 34.. run data modify storage exigence:bossbar_deck card_34 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 34.. unless score Cards DungeonRun matches 34.. run data modify storage exigence:bossbar_deck card_34 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 35.. if score Cards DungeonRun matches 35.. run data modify storage exigence:bossbar_deck card_35 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 35.. unless score Cards DungeonRun matches 35.. run data modify storage exigence:bossbar_deck card_35 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 36.. if score Cards DungeonRun matches 36.. run data modify storage exigence:bossbar_deck card_36 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 36.. unless score Cards DungeonRun matches 36.. run data modify storage exigence:bossbar_deck card_36 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 37.. if score Cards DungeonRun matches 37.. run data modify storage exigence:bossbar_deck card_37 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 37.. unless score Cards DungeonRun matches 37.. run data modify storage exigence:bossbar_deck card_37 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 38.. if score Cards DungeonRun matches 38.. run data modify storage exigence:bossbar_deck card_38 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 38.. unless score Cards DungeonRun matches 38.. run data modify storage exigence:bossbar_deck card_38 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 39.. if score Cards DungeonRun matches 39.. run data modify storage exigence:bossbar_deck card_39 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 39.. unless score Cards DungeonRun matches 39.. run data modify storage exigence:bossbar_deck card_39 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 40.. if score Cards DungeonRun matches 40.. run data modify storage exigence:bossbar_deck card_40 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 40.. unless score Cards DungeonRun matches 40.. run data modify storage exigence:bossbar_deck card_40 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 41.. if score Cards DungeonRun matches 41.. run data modify storage exigence:bossbar_deck card_41 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 41.. unless score Cards DungeonRun matches 41.. run data modify storage exigence:bossbar_deck card_41 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 42.. if score Cards DungeonRun matches 42.. run data modify storage exigence:bossbar_deck card_42 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 42.. unless score Cards DungeonRun matches 42.. run data modify storage exigence:bossbar_deck card_42 set value {text:"▌",color:"dark_gray"}

execute if score #highest Deck matches 43.. if score Cards DungeonRun matches 43.. run data modify storage exigence:bossbar_deck card_43 set value {text:"▌",color:"white"}
execute if score #highest Deck matches 43.. unless score Cards DungeonRun matches 43.. run data modify storage exigence:bossbar_deck card_43 set value {text:"▌",color:"dark_gray"}

function exigence:bossbar/deck/update_title with storage exigence:bossbar_deck