::@echo OFF





:: Constants
set this_mod_folder_location=.\mod_files\ck2_mp_pdxrptg_2026_compilation\
set git_mod_folder_location=.\..\
set git_mod_subfolder=\mod_files\
set base_mod_folder_location=.\source_files\1_base_mod\
set base_mod_overrides_folder_location=.\source_files\2_base_mod_overrides\
set akaviri_trade_folder_location=.\..\ck2_mp_tall_ek_compilation\workshop_mods\akaviritrade_fixed\
set final_overrides_folder_location=.\source_files\9_final_overrides\





:: Delete any existing files in the mod compilation
if exist %this_mod_folder_location% (
	del /F /S /Q %this_mod_folder_location%
	rmdir /S /Q %this_mod_folder_location%
)





:: Copy the base mod into the compilation folder
xcopy /R /Y /Q /S /E /I %base_mod_folder_location% %this_mod_folder_location%

:: Copy any base mod overrides into the compilation folder
xcopy /R /Y /Q /S /E /I %base_mod_overrides_folder_location% %this_mod_folder_location%

:: Copy files from git mods which have no significant dependencies
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_gifts%git_mod_subfolder%expanded_decisions_gifts\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_pdxrptg%git_mod_subfolder%expanded_decisions_pdxrptg\ %this_mod_folder_location%
xcopy /R /Y /Q /S /E /I %git_mod_folder_location%expanded_decisions_prisoners%git_mod_subfolder%expanded_decisions_prisoners\ %this_mod_folder_location%

:: Copy Akaviri trade from "Tall EK" subfolder
:: NB: This MUST come after ED:PDXRPTG
xcopy /R /Y /Q /S /E /I %akaviri_trade_folder_location% %this_mod_folder_location%

:: Copy any final overrides into the compilation folder
xcopy /R /Y /Q /S /E /I %final_overrides_folder_location% %this_mod_folder_location%





:: Cleanup: Delete all files in the root mod folder
del /F /Q %this_mod_folder_location%*

:: Reinsert the preview pic
xcopy /R /Y /Q %base_mod_folder_location%EKPreview0.jpg %this_mod_folder_location%

::pause