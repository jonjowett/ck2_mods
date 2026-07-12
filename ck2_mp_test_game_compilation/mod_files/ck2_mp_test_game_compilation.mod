name="CK2 MP: Test Game Compilation"

path="mod/ck2_mp_test_game_compilation"

# Intended to work with all of these total conversion mods we're testing - but not all at the same time!
dependencies = {
	
	# ATEFF https://steamcommunity.com/sharedfiles/filedetails/?id=1341828311
	"\"After the End Fan Fork\""
	"\"After the End Fan Fork - African Faces DLC\""
	"\"After the End Fan Fork - Chinese Faces DLC\""
	"\"After the End Fan Fork - English and German Faces DLC\""
	"\"After the End Fan Fork - Holy Fury DLC Faces\""
	"\"After the End Fan Fork - Mongol Faces DLC\""
	"\"After the End Fan Fork - Sunset Invasion DLC faces\""
	"\"After the End Fan Fork Music\""
	
	# ROT3K https://steamcommunity.com/sharedfiles/filedetails/?id=1898347562
	"\"Romance of the Three Kingdoms\""
	"\"Romance of the Three Kingdoms Units Addon\""
	
	# W:GOA https://steamcommunity.com/sharedfiles/filedetails/?id=1812962169
	"\"Warcraft: Guardians of Azeroth\""
	"\"Warcraft: GoA Models\""
	"\"Warcraft: GoA Music\""
	
	# Faerun https://steamcommunity.com/sharedfiles/filedetails/?id=2938385596
	"\"Faerun - Forgotten Realms Total Conversion\""
	
	# WTWSMS https://steamcommunity.com/sharedfiles/filedetails/?id=3548940476
	"\"When the World Stopped Making Sense\""
	
	# Targaryen Invasion https://steamcommunity.com/sharedfiles/filedetails/?id=3204195992
	"\"Targaryen Invasion of the Old World\""
	
	# Avatar https://steamcommunity.com/sharedfiles/filedetails/?id=2113039890
	#  --- One line works for local versions, prior to workshop upload.
	#  --- The other line works for workshop upload, and subsequent downloads by subscribers.
	#  --- Why doesn't the "workshop upload" format work for local versions, unlike every other mod? No clue!
	#  --- Thankfully, the "local version" line can coexist (since it'll just render itself useless, instead of breaking the whole .mod file).
	#  --- Just in case something goes wrong, ensure the "local version" line is ALWAYS the LAST line in the dependencies block.
	# Workshop upload version
	"\"Avatar - Four Nations Restored\""
	# Local version
	"Avatar - Four Nations Restored"
	
}