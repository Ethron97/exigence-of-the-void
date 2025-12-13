# Reset scores
scoreboard players set resource.green_consume deck.analysis 0
scoreboard players set resource.red_consume deck.analysis 0
scoreboard players set resource.aqua_consume deck.analysis 0

scoreboard players set resource.green_cards deck.analysis 0
scoreboard players set resource.red_cards deck.analysis 0
scoreboard players set resource.aqua_cards deck.analysis 0

scoreboard players set e.heighten deck.analysis 0
scoreboard players set e.speedSeconds deck.analysis 0
scoreboard players set e.speed2Seconds deck.analysis 0
scoreboard players set e.regenSeconds deck.analysis 0
scoreboard players set e.jumpSeconds deck.analysis 0
scoreboard players set e.invisibilitySeconds deck.analysis 0
scoreboard players set e.beastsenseSeconds deck.analysis 0
scoreboard players set e.glimmerSeconds deck.analysis 0
scoreboard players set e.detectionSeconds deck.analysis 0
scoreboard players set e.flickerSeconds deck.analysis 0
scoreboard players set e.circulationSeconds deck.analysis 0

scoreboard players set other.berry deck.analysis 0
scoreboard players set other.treasure deck.analysis 0
scoreboard players set other.ember deck.analysis 0
scoreboard players set other.card_shop deck.analysis 0
scoreboard players set other.difficulty_mod deck.analysis 0
scoreboard players set other.level_1_keys deck.analysis 0
scoreboard players set other.level_2_keys deck.analysis 0
scoreboard players set other.level_3_keys deck.analysis 0
scoreboard players set other.menace deck.analysis 0
scoreboard players set other.hazard deck.analysis 0

# HAZARD - SETUP
scoreboard players set hazard.level_1 deck.analysis 0
scoreboard players set hazard.level_2 deck.analysis 0
scoreboard players set hazard.level_3 deck.analysis 0
scoreboard players set hazard.level_4 deck.analysis 0
scoreboard players set hazard.random deck.analysis 0
scoreboard players set hazard.echo deck.analysis 0

scoreboard players set cards.total deck.analysis 0
scoreboard players set cards.void deck.analysis 0
scoreboard players set cards.ascend deck.analysis 0
scoreboard players set cards.instant deck.analysis 0
scoreboard players set cards.persistent deck.analysis 0
scoreboard players set cards.recycle deck.analysis 0
scoreboard players set cards.spellbind deck.analysis 0
# Calculate expected time in dungeon: Cards + recycle - spellbind * 30 = seconds (min max?)

# Assumes 1 decimal place (ie, 10 = 1, 5 = 0.5)
scoreboard players set class.treasure deck.analysis 0
scoreboard players set class.ember deck.analysis 0
scoreboard players set class.deck deck.analysis 0
scoreboard players set class.movement deck.analysis 0
scoreboard players set class.survival deck.analysis 0
scoreboard players set class.utility deck.analysis 0
scoreboard players set class.other deck.analysis 0
# Alt scoring
#   Rarity weighted (score * rarity)
scoreboard players set class.treasure.weighted deck.analysis 0
scoreboard players set class.ember.weighted deck.analysis 0
scoreboard players set class.deck.weighted deck.analysis 0
scoreboard players set class.movement.weighted deck.analysis 0
scoreboard players set class.survival.weighted deck.analysis 0
scoreboard players set class.utility.weighted deck.analysis 0
scoreboard players set class.other.weighted deck.analysis 0
#   Balance Adjusted TODO; we're seeing how the normal/weighted compare first.