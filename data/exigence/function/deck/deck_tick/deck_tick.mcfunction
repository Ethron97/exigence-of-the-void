# Responsible for deck timing management, such as card draws

# CardDrawCooldown controls when cards get added to the draw queue
scoreboard players remove card.draw.cooldown tick_counter 1
execute if score card.draw.cooldown tick_counter matches ..0 run function exigence:deck/deck_tick/add_card_queue

# Reduce CardPlayCooldown until 0
execute if score card.play.cooldown tick_counter matches 1.. run scoreboard players remove card.play.cooldown tick_counter 1
# If 0 and cards are queued, play card
execute if score CardQueue DungeonRun matches 1.. if score card.play.cooldown tick_counter matches ..0 run function exigence:deck/deck_tick/add_card_draw

# Update bossbar value
function exigence:bossbar/deck/update_bar