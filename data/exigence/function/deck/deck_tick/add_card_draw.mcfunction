# Reset the cooldown for the next card draw
scoreboard players operation card.play.cooldown tick_counter = #CardPlayCooldownLimit tick_counter

scoreboard players remove CardQueue DungeonRun 1

function exigence:deck/draw_card
