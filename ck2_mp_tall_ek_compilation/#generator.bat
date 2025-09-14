::@echo OFF





:: Constants
set this_mod_folder_location=.\mod_files\ck2_mp_tall_ek_compilation\
set git_mod_folder_location=.\..\
set git_mod_subfolder=\mod_files\
set workshop_mod_folder_location=.\workshop_mods\





:: Delete any existing files in the mod compilation
if exist %this_mod_folder_location% (
	del /F /S /Q %this_mod_folder_location%
	rmdir /S /Q %this_mod_folder_location%
)





:: Copy files from git mods which have no significant dependencies
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_character_search_helper%git_mod_subfolder%expanded_decisions_character_search_helper\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_custom_empire_formation%git_mod_subfolder%expanded_decisions_custom_empire_formation\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_gifts%git_mod_subfolder%expanded_decisions_gifts\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_great_projects%git_mod_subfolder%expanded_decisions_great_projects\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_multiplayer\mod_files_compatible\expanded_decisions_multiplayer_compatible\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_pdxrptg%git_mod_subfolder%expanded_decisions_pdxrptg\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_prisoners%git_mod_subfolder%expanded_decisions_prisoners\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_tributaries%git_mod_subfolder%expanded_decisions_tributaries\ %this_mod_folder_location%
::pause





:: Copy files from workshop mods which have no significant dependencies
:: (None)
::pause





:: Copy mods with complex dependencies

:: Workshop mods
:: Akaviri trade MUST come after ED:PDXRPTG
xcopy /R /Y /Q /S /E /I %workshop_mod_folder_location%akaviritrade_fixed\ %this_mod_folder_location%

:: Git mods
:: TP automation should probably come after Akaviri trade (although it might not be strictly necessary)
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%trade_post_automation%git_mod_subfolder%trade_post_automation\ %this_mod_folder_location%

:: Final changes specific to this game
xcopy /R /Y /Q /S /E /I .\z_final_changes\ %this_mod_folder_location%
::pause





:: Cleanup: Delete all files in the root mod folder
del /F /Q %this_mod_folder_location%*
::pause