# Reset scores
scoreboard players set resource.green.consume deck.analysis 0
scoreboard players set resource.red.consume deck.analysis 0
scoreboard players set resource.aqua.consume deck.analysis 0

scoreboard players set resource.green.cards deck.analysis 0
scoreboard players set resource.red.cards deck.analysis 0
scoreboard players set resource.aqua.cards deck.analysis 0

scoreboard players set resource.green.max deck.analysis 2
scoreboard players set resource.red.max deck.analysis 2
scoreboard players set resource.aqua.max deck.analysis 2

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

scoreboard players set core.berry deck.analysis 0
scoreboard players set core.treasure deck.analysis 0
scoreboard players set core.ember deck.analysis 0
scoreboard players set core.menace deck.analysis 0
scoreboard players set core.hazard deck.analysis 0
scoreboard players set core.recycle deck.analysis 0
scoreboard players set core.spellbind deck.analysis 0

scoreboard players set core.card_shop deck.analysis 0
scoreboard players set core.difficulty_mod deck.analysis 0
scoreboard players set core.level_1_keys deck.analysis 0
scoreboard players set core.level_2_keys deck.analysis 0
scoreboard players set core.level_3_keys deck.analysis 0

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

# Time mod from tranquility/exigence (1 = time added, -1 is time removed)
scoreboard players set deck.time_mod deck.analysis 0
scoreboard players set deck.added_cards deck.analysis 0

scoreboard players set cards.common deck.analysis 0
scoreboard players set cards.uncommon deck.analysis 0
scoreboard players set cards.rare deck.analysis 0
scoreboard players set cards.legendary deck.analysis 0
# Calculate expected time in dungeon: Cards + recycle - spellbind * 30 = seconds (min max?)
scoreboard players set cards.time deck.analysis 0
scoreboard players set cards.time_expected deck.analysis 0

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