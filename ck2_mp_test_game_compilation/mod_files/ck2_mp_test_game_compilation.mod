name="CK2 MP: Test Game Compilation"

path="mod/ck2_mp_test_game_compilation"

# Intended to work with all of these total conversion mods we're testing - but not all at the same time!
dependencies = {
	
	# ATEFF
	"\"After the End Fan Fork\""
	"\"After the End Fan Fork - African Faces DLC\""
	"\"After the End Fan Fork - Chinese Faces DLC\""
	"\"After the End Fan Fork - English and German Faces DLC\""
	"\"After the End Fan Fork - Holy Fury DLC Faces\""
	"\"After the End Fan Fork - Mongol Faces DLC\""
	"\"After the End Fan Fork - Sunset Invasion DLC faces\""
	"\"After the End Fan Fork Music\""
	
	# ROT3K
	"\"Romance of the Three Kingdoms\""
	"\"Romance of the Three Kingdoms Units Addon\""
	
	# W:GOA
	"\"Warcraft: Guardians of Azeroth\""
	"\"Warcraft: GoA Models\""
	"\"Warcraft: GoA Music\""
	
	# Faerun
	"\"Faerun - Forgotten Realms Total Conversion\""
	
	# WTWSMS
	"\"When the World Stopped Making Sense\""
	
	# Avatar
	#  --- One line works for local versions, prior to workshop upload.
	#  --- The other line works for workshop upload, and subsequent downloads by subscribers.
	#  --- Why doesn't the "workshop upload" format work for local versions, unlike every other mod? No clue!
	#  --- Thankfully, the "local version" line can coexist (since it'll just render itself useless, instead of breaking the whole .mod file).
	#"Avatar - Four Nations Restored"
	"\"Avatar - Four Nations Restored\""
	
	# Targaryen Invasion
	"\"Targaryen Invasion of the Old World\""
	
}