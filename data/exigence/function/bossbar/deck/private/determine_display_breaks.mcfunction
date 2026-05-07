# Determine where to put little gaps between the cards to make counting easier at a glance

#====================================================================================================

# Reset breaks
data modify storage exigence:bossbar_deck break_1 set value {text:""}
data modify storage exigence:bossbar_deck break_2 set value {text:""}
data modify storage exigence:bossbar_deck break_3 set value {text:""}
data modify storage exigence:bossbar_deck break_4 set value {text:""}
data modify storage exigence:bossbar_deck break_5 set value {text:""}
data modify storage exigence:bossbar_deck break_6 set value {text:""}
data modify storage exigence:bossbar_deck break_7 set value {text:""}
data modify storage exigence:bossbar_deck break_8 set value {text:""}

# If deck size is <=20, break every 5 cards
execute if score deck.size game.deck matches 6..20 run data modify storage exigence:bossbar_deck break_1 set value {text:" "}
execute if score deck.size game.deck matches 11.. run data modify storage exigence:bossbar_deck break_2 set value {text:" "}
execute if score deck.size game.deck matches 16..20 run data modify storage exigence:bossbar_deck break_3 set value {text:" "}

# If deck size is >20, break every 10 cards
execute if score deck.size game.deck matches 21.. run data modify storage exigence:bossbar_deck break_4 set value {text:" "}
execute if score deck.size game.deck matches 31.. run data modify storage exigence:bossbar_deck break_6 set value {text:" "}
execute if score deck.size game.deck matches 41.. run data modify storage exigence:bossbar_deck break_8 set value {text:" "}