# Analyze deck

## CONTRAINTS
#   AS Player

#=========================================================================================================================

say Analyze deck

# Select "active" profile node
function exigence:profile/profile_node/select_active

# Reset
data modify storage exigence:hub too_many_copies set value false
function exigence:deck/process/reset_analyze_scores
data modify storage exigence:deck_analysis errors set value []

# ========================================================================================================================
# COMMON
# ========================================================================================================================

# Common Void
function exigence:deck/process/analyze_card {card_name:"endurance",display_name:"Endurance",rarity:1,void:1,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"fallow_coffers",display_name:"Fallow Coffers",rarity:1,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"delve",display_name:"Delve",rarity:1,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"scout",display_name:"Scout",rarity:1,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}

# Common
function exigence:deck/process/analyze_card {card_name:"cantrip",display_name:"Cantrip",rarity:1,void:0,recycler:0,spellbinder:1,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"courage",display_name:"Courage",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"treasure_hunter",display_name:"Treasure Hunter",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"ember_seeker",display_name:"Ember Seeker",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"green_thumb",display_name:"Green Thumb",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"beast_sense",display_name:"Beast Sense",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"herbalism",display_name:"Herbalism",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"risky_reward",display_name:"Risky Reward",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"recovery",display_name:"Recovery",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"stride",display_name:"Stride",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"dash",display_name:"Dash",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"glimmer",display_name:"Glimmer",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"detection",display_name:"Detection",rarity:1,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}

# Common Instant
function exigence:deck/process/analyze_card {card_name:"canyon_runner",display_name:"Canyon Runner",rarity:1,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"spike_growth",display_name:"Spike Growth",rarity:1,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"key_hunter_i",display_name:"Key Hunter I",rarity:1,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"forgotten_belonging",display_name:"Forgotten Belonging",rarity:1,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"roots_of_vitality",display_name:"Roots of Vitality",rarity:1,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}

# ========================================================================================================================
# UNCOMMON
# ========================================================================================================================

# Uncommon Void
function exigence:deck/process/analyze_card {card_name:"dissonance",display_name:"Dissonance",rarity:2,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"remembrance",display_name:"Remembrance",rarity:2,void:1,recycler:1,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"cart_cache",display_name:"Cart Cache",rarity:2,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"tasty_surprise",display_name:"Tasty Surprise",rarity:2,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}

# Uncommon
function exigence:deck/process/analyze_card {card_name:"ascending_strides",display_name:"Ascending Strides",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:1}
function exigence:deck/process/analyze_card {card_name:"trust_fund",display_name:"Trust Fund",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:1}
function exigence:deck/process/analyze_card {card_name:"bounding_strides",display_name:"Bounding Strides",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"blessed_harvest",display_name:"Blessed Harvest",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"overgrowth",display_name:"Overgrowth",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"second_wind",display_name:"Second Wind",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"quick_leap",display_name:"Quick Leap",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"fervor",display_name:"Fervor",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"loot_and_fruit",display_name:"Loot and Fruit",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"loot_and_scoot",display_name:"Loot and Scoot",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"glow_and_go",display_name:"Glow and Go",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"arrogance",display_name:"Arrogance",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"detect_thoughts",display_name:"Detect Thoughts",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"camouflage",display_name:"Camouflage",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"berry_breath",display_name:"Berry Breath",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"salvage",display_name:"Salvage",rarity:2,void:0,recycler:1,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"commune_with_nature",display_name:"Commune With Nature",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"spell_scroll",display_name:"Spell Scroll",rarity:2,void:0,recycler:0,spellbinder:1,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"heighten",display_name:"Heighten",rarity:2,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}

# Uncommon Instant
function exigence:deck/process/analyze_card {card_name:"eyes_on_the_prize",display_name:"Eyes on the Prize",rarity:2,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"forgotten_experiment",display_name:"Forgotten Experiment",rarity:2,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"key_hunter_ii",display_name:"Key Hunter II",rarity:2,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"reflection",display_name:"Reflection",rarity:2,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"heart_of_ferocity",display_name:"Heart of Ferocity",rarity:2,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}

# ========================================================================================================================
# RARE
# ========================================================================================================================

# Rare Void
function exigence:deck/process/analyze_card {card_name:"patience",display_name:"Patience",rarity:3,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"dissonance_ii",display_name:"Dissonance II",rarity:3,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"prescience",display_name:"Prescience",rarity:3,void:1,recycler:0,spellbinder:1,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"forbidden_knowledge",display_name:"Forbidden Knowledge",rarity:3,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}

# Rare
function exigence:deck/process/analyze_card {card_name:"crop_rotation",display_name:"Crop Rotation",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:1}
function exigence:deck/process/analyze_card {card_name:"situational_awareness",display_name:"Situational Awareness",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:1}
function exigence:deck/process/analyze_card {card_name:"transcend",display_name:"Transcend",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"glory",display_name:"Glory",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"opulence",display_name:"Opulence",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"guidance",display_name:"Amplify",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"vindication",display_name:"Vindication",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"cash_crop",display_name:"Cash_Crop",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"circulation",display_name:"Circulation",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"veil",display_name:"Veil",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"revivify",display_name:"Revivify",rarity:3,void:0,recycler:1,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"compost",display_name:"Compost",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"spellfire",display_name:"Spellfire",rarity:3,void:0,recycler:0,spellbinder:1,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"lightweave",display_name:"Lightweave",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"prosperity",display_name:"Prosperity",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"amplify",display_name:"Amplify",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"fanatic",display_name:"Fanatic",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"bloodsense",display_name:"Bloodsense",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"proclaim",display_name:"Proclaim",rarity:3,void:0,recycler:0,spellbinder:1,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"accelerate",display_name:"Accelerate",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"metabolism",display_name:"Metabolism",rarity:3,void:0,recycler:0,spellbinder:0,instant:0,persistent:1}

# Rare Instant
function exigence:deck/process/analyze_card {card_name:"elation",display_name:"Elation",rarity:3,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"key_hunter_iii",display_name:"Key Hunter III",rarity:3,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"joy",display_name:"Joy",rarity:3,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"forgotten_offering",display_name:"Forgotten Offering",rarity:3,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"mind_of_divinity",display_name:"Mind of Divinity",rarity:3,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"heretic",display_name:"Heretic",rarity:3,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}

# ========================================================================================================================
# LEGENDARY
# ========================================================================================================================

# Legendary Void
function exigence:deck/process/analyze_card {card_name:"chrysopoeia",display_name:"Chrysopoeia",rarity:4,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"dissonance_iii",display_name:"Dissonance III",rarity:4,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"led_by_ancient_light",display_name:"Led by Ancient Light",rarity:4,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"void_cache",display_name:"Void Cache",rarity:4,void:1,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"prophecy",display_name:"Prophecy",rarity:4,void:1,recycler:1,spellbinder:0,instant:0,persistent:0}

# Legendary
function exigence:deck/process/analyze_card {card_name:"ambrosia",display_name:"Ambrosia",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:1}
function exigence:deck/process/analyze_card {card_name:"concordance",display_name:"Concordance",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:1}
function exigence:deck/process/analyze_card {card_name:"final_harvest",display_name:"Final Harvest",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"helpful_spirits",display_name:"Helpful Spirits",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"moonwalker",display_name:"Moonwalker",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"rejuvination",display_name:"Rejuvination",rarity:4,void:0,recycler:1,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"resonance",display_name:"Resonance",rarity:4,void:0,recycler:1,spellbinder:0,instant:0,persistent:1}
function exigence:deck/process/analyze_card {card_name:"respite",display_name:"Respite",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:1}
function exigence:deck/process/analyze_card {card_name:"seasons",display_name:"Seasons",rarity:4,void:0,recycler:1,spellbinder:0,instant:0,persistent:1}
function exigence:deck/process/analyze_card {card_name:"second_chances",display_name:"Second Chances",rarity:4,void:0,recycler:1,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"spell_soul",display_name:"Spell Soul",rarity:4,void:0,recycler:0,spellbinder:1,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"sunwalker",display_name:"Sunwalker",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"signature_spells",display_name:"Signature Spells",rarity:4,void:0,recycler:0,spellbinder:1,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"lightdrawn_spirits",display_name:"Lightdrawn Spirits",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"skyslayer",display_name:"Skyslayer",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"shape_change",display_name:"Shape Change",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"far_step",display_name:"Far Step",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"wish",display_name:"Wish",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"synaptic_shock",display_name:"Synaptic Shock",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"entangle",display_name:"Entangle",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"truesight",display_name:"Truesight",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}
function exigence:deck/process/analyze_card {card_name:"kinesis",display_name:"Kinesis",rarity:4,void:0,recycler:0,spellbinder:0,instant:0,persistent:0}

# Legendary Instant
function exigence:deck/process/analyze_card {card_name:"backup_plan",display_name:"Backup Plan",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"claustrophobia",display_name:"Claustrophobia",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"exigence",display_name:"Exigence",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"key_master",display_name:"Key Master",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"mending",display_name:"Mending",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"oblivion",display_name:"Oblivion",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"tranquility",display_name:"Tranquility",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"true_ascension",display_name:"True Ascension",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"voidscent",display_name:"Voidscent",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"spellbook",display_name:"Spellbook",rarity:4,void:0,recycler:0,spellbinder:1,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"conviction",display_name:"Conviction",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"void_clone",display_name:"Void Clone",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}
function exigence:deck/process/analyze_card {card_name:"inner_fire",display_name:"Inner Fire",rarity:4,void:0,recycler:0,spellbinder:0,instant:1,persistent:0}

# ========================================================================================================================
# Copy information from scores to data
function exigence:deck/process/private/update_analysis_storage