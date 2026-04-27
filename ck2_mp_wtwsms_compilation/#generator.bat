:: Constants (folder locations)
@echo OFF
set this_mod_folder_location=.\mod_files\ck2_mp_wtwsms_compilation\
set git_mod_folder_location=.\..\
set git_mod_subfolder=\mod_files\
set workshop_mod_subfolder=.\workshop_mods\
set custom_git_mod_subfolder=.\xxx_git_mod_custom_versions\
set compatch_subfolder=.\yyy_compatches\
set final_subfolder=.\zzz_final_changes\
@echo ON










:: Delete any existing files in the mod compilation

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo         STEP 1/6 - INITIAL DELETION - BEGIN        
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

if exist %this_mod_folder_location% (
	del /F /S /Q %this_mod_folder_location%
	rmdir /S /Q %this_mod_folder_location%
)

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo          STEP 1/6 - INITIAL DELETION - END         
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

::pause










:: Copy files from git mods which have no significant dependencies

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo             STEP 2/6 - GIT MODS - BEGIN            
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

:: Not checked because fully compatible
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%better_character_tooltips%git_mod_subfolder%better_character_tooltips\ %this_mod_folder_location%

:: Not checked because fully compatible
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%better_character_tooltips_decisions%git_mod_subfolder%better_character_tooltips_decisions\ %this_mod_folder_location%

:: Not checked because fully compatible
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_character_search_helper%git_mod_subfolder%expanded_decisions_character_search_helper\ %this_mod_folder_location%

:: Worked fine in test game
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_commander_training%git_mod_subfolder%expanded_decisions_commander_training\ %this_mod_folder_location%

:: Not checked because fully compatible
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_custom_empire_formation%git_mod_subfolder%expanded_decisions_custom_empire_formation\ %this_mod_folder_location%

:: Not checked because fully compatible
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_gifts%git_mod_subfolder%expanded_decisions_gifts\ %this_mod_folder_location%

:: Not checked because fully compatible
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_great_projects%git_mod_subfolder%expanded_decisions_great_projects\ %this_mod_folder_location%

:: ED:Hermetics chhecked - shouldn't have any clashes
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_hermetics%git_mod_subfolder%expanded_decisions_hermetics\ %this_mod_folder_location%

:: Exclude ED:India for now - it's changed a lot in WTWSMS, and idk if hinduism/castes/etc still work the same, and maybe no-one will play there

:: Only use compatible version of ED:MP
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_multiplayer\mod_files_compatible\expanded_decisions_multiplayer_compatible\ %this_mod_folder_location%

:: Exclude ED:Pillaging due to abusability in MP

:: Not checked because fully compatible
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_prisoners%git_mod_subfolder%expanded_decisions_prisoners\ %this_mod_folder_location%

:: Not checked because fully compatible
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_propagate_bloodlines%git_mod_subfolder%expanded_decisions_propagate_bloodlines\ %this_mod_folder_location%

:: ED:TV checked & should be fully compatible
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_targeted_vanilla%git_mod_subfolder%expanded_decisions_targeted_vanilla\ %this_mod_folder_location%

:: Worked fine in test game
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_tributaries%git_mod_subfolder%expanded_decisions_tributaries\ %this_mod_folder_location%

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo              STEP 2/6 - GIT MODS - END             
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

::pause










:: Copy files from workshop mods which have no significant dependencies

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo          STEP 3/6 - WORKSHOP MODS - BEGIN          
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

:: Hunting Dog Bloodline Fix overrides 1 event, should be fine
xcopy /R /Y /Q /S /E /I %workshop_mod_subfolder%hunting_dog_bloodline_fix\ %this_mod_folder_location%

:: Overrides a single loc string, should be fine
xcopy /R /Y /Q /S /E /I %workshop_mod_subfolder%last_legendary_gathering_time\ %this_mod_folder_location%

:: NAPFriends adds a couple of extra decisions, should be fine
xcopy /R /Y /Q /S /E /I %workshop_mod_subfolder%nap_friends\ %this_mod_folder_location%

:: No artifact losing overrides 2 defines which are not specified anywhere in wtwsms
xcopy /R /Y /Q /S /E /I %workshop_mod_subfolder%no_artifact_losing\ %this_mod_folder_location%

:: !!!3 doctrines reform needs testing in-game!!!
xcopy /R /Y /Q /S /E /I %workshop_mod_subfolder%three_doctrines_reform\ %this_mod_folder_location%

:: Overwrites a single file, which is not touched by WTWSMS, should be fine
xcopy /R /Y /Q /S /E /I %workshop_mod_subfolder%trait_softcap_exterminated\ %this_mod_folder_location%

:: Overrides a single loc string, should be fine
xcopy /R /Y /Q /S /E /I %workshop_mod_subfolder%viking_counter_ironman\ %this_mod_folder_location%

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo           STEP 3/6 - WORKSHOP MODS - END           
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

::pause










:: Copy mods with complex dependencies

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo           STEP 4/6 - COMPLEX MODS - BEGIN          
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

xcopy /R /Y /Q /S /E /I %custom_git_mod_subfolder%ai_reformed_pagans_convert_their_provinces\ %this_mod_folder_location%

xcopy /R /Y /Q /S /E /I %git_mod_folder_location%bugfix_tribal_buildings%git_mod_subfolder%bugfix_tribal_buildings\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %compatch_subfolder%bugfix_tribal_buildings\ %this_mod_folder_location%

:: Dynamic bloodlines - Bugfix for wars won
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%bugfix_base_game_forge_bloodline%git_mod_subfolder%bugfix_base_game_forge_bloodline\ %this_mod_folder_location%
:: Dynamic bloodlines - More Bloodlines & Bugfix & Compatch
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%more_bloodlines_bugfix\reference_files\more_bloodlines\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%more_bloodlines_bugfix%git_mod_subfolder%more_bloodlines_bugfix\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %compatch_subfolder%more_bloodlines_bugfix\ %this_mod_folder_location%
:: Dynamic bloodlines - Even More Bloodlines & Compatch
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%even_more_bloodlines%git_mod_subfolder%even_more_bloodlines\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %compatch_subfolder%even_more_bloodlines\ %this_mod_folder_location%

xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_grand_hunt%git_mod_subfolder%expanded_decisions_grand_hunt\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %compatch_subfolder%expanded_decisions_grand_hunt\ %this_mod_folder_location%

xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_refuse_nomination%git_mod_subfolder%expanded_decisions_refuse_nomination\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %compatch_subfolder%expanded_decisions_refuse_nomination\ %this_mod_folder_location%

xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_society_joining%git_mod_subfolder%expanded_decisions_society_joining\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %compatch_subfolder%expanded_decisions_society_joining\ %this_mod_folder_location%

xcopy /R /Y /Q /S /E /I %git_mod_folder_location%fixed_wol_personalised%git_mod_subfolder%fixed_wol_personalised\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %compatch_subfolder%fixed_wol_personalised\ %this_mod_folder_location%

xcopy /R /Y /Q /S /E /I %workshop_mod_subfolder%jade_serpent\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %compatch_subfolder%jade_serpent\ %this_mod_folder_location%

:: TP automation should probably come after everything else (ie. after everything else that might potentially affect trade) (although it might not be strictly necessary in this case)
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%trade_post_automation%git_mod_subfolder%trade_post_automation\ %this_mod_folder_location%

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo            STEP 4/6 - COMPLEX MODS - END           
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

::pause










:: Final changes specific to this game

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo      STEP 5/6 - SPECIAL AD-HOC CHANGES - BEGIN     
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

xcopy /R /Y /Q /S /E /I %final_subfolder%\ %this_mod_folder_location%

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo       STEP 5/6 - SPECIAL AD-HOC CHANGES - END      
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

::pause










:: Cleanup: Delete all files in the root mod folder (eg. images, readmes, descriptor.mod)

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo             STEP 6/6 - CLEANUP - BEGIN             
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

del /F /Q %this_mod_folder_location%*

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo.
echo              STEP 6/6 - CLEANUP - END              
echo.
echo ===================================================
echo.
echo.
echo.
@echo ON

pause