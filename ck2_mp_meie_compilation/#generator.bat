::@echo OFF





:: Constants
set this_mod_folder_location=.\mod_files\ck2_mp_meie_compilation\
set git_mod_folder_location=.\..\
set git_mod_subfolder=\mod_files\
set workshop_mod_folder_location=.\workshop_mods\
set workshop_mod_folder_location_alexiad_comp=.\..\ck2_mp_alexiad_compilation\workshop_mods\





:: Delete any existing files in the mod compilation
if exist %this_mod_folder_location% (
	del /F /S /Q %this_mod_folder_location%
	rmdir /S /Q %this_mod_folder_location%
)
::pause





:: Copy files from git mods which have no significant dependencies
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%ai_reformed_pagans_convert_their_provinces%git_mod_subfolder%ai_reformed_pagans_convert_their_provinces\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%better_character_tooltips%git_mod_subfolder%better_character_tooltips\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%better_character_tooltips_decisions%git_mod_subfolder%better_character_tooltips_decisions\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%better_slavic_union%git_mod_subfolder%better_slavic_union\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%bugfix_tribal_buildings%git_mod_subfolder%bugfix_tribal_buildings\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_advanced_tribe%git_mod_subfolder%expanded_decisions_advanced_tribe\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_character_search_helper%git_mod_subfolder%expanded_decisions_character_search_helper\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_commander_training%git_mod_subfolder%expanded_decisions_commander_training\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_custom_empire_formation%git_mod_subfolder%expanded_decisions_custom_empire_formation\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_delve_into_the_classics%git_mod_subfolder%expanded_decisions_delve_into_the_classics\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_gifts%git_mod_subfolder%expanded_decisions_gifts\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_grand_hunt%git_mod_subfolder%expanded_decisions_grand_hunt\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_great_projects%git_mod_subfolder%expanded_decisions_great_projects\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_hermetics%git_mod_subfolder%expanded_decisions_hermetics\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_india%git_mod_subfolder%expanded_decisions_india\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_kingdom_formation%git_mod_subfolder%expanded_decisions_kingdom_formation\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_pillaging%git_mod_subfolder%expanded_decisions_pillaging\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_prisoners%git_mod_subfolder%expanded_decisions_prisoners\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_propagate_bloodlines%git_mod_subfolder%expanded_decisions_propagate_bloodlines\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_refuse_nomination%git_mod_subfolder%expanded_decisions_refuse_nomination\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_society_joining%git_mod_subfolder%expanded_decisions_society_joining\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_targeted_vanilla%git_mod_subfolder%expanded_decisions_targeted_vanilla\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_tributaries%git_mod_subfolder%expanded_decisions_tributaries\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%fixed_wol_personalised%git_mod_subfolder%fixed_wol_personalised\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%normans_can_raid%git_mod_subfolder%normans_can_raid\ %this_mod_folder_location%
::pause





:: Copy files from workshop mods which have no significant dependencies
xcopy /R /Y /Q /S /E /I %workshop_mod_folder_location_alexiad_comp%hunting_dog_bloodline_fix\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %workshop_mod_folder_location_alexiad_comp%last_legendary_gathering_time\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %workshop_mod_folder_location_alexiad_comp%nap_friends\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %workshop_mod_folder_location_alexiad_comp%no_artifact_losing\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %workshop_mod_folder_location_alexiad_comp%three_doctrines_reform\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %workshop_mod_folder_location_alexiad_comp%trait_softcap_exterminated\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %workshop_mod_folder_location_alexiad_comp%viking_counter_ironman\ %this_mod_folder_location%
::pause





:: Copy mods with complex dependencies

:: Bloodlines stuff should probably be in this order
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%more_bloodlines_bugfix\reference_files\more_bloodlines\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%more_bloodlines_bugfix%git_mod_subfolder%more_bloodlines_bugfix\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%even_more_bloodlines%git_mod_subfolder%even_more_bloodlines\ %this_mod_folder_location%

:: TP automation should probably come after everything else trade (although it might not be strictly necessary)
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%trade_post_automation%git_mod_subfolder%trade_post_automation\ %this_mod_folder_location%

:: ED:MP must be included after all the bloodline stuff
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_multiplayer\mod_files_compatible\expanded_decisions_multiplayer_compatible\ %this_mod_folder_location%





:: Final changes specific to this game
xcopy /R /Y /Q /S /E /I .\z_final_changes\ %this_mod_folder_location%
::pause





:: Cleanup: Delete all files in the root mod folder
del /F /Q %this_mod_folder_location%*
::pause