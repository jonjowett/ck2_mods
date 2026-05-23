::@echo OFF





:: Constants
set normal_mod_folder_location=.\mod_files\expanded_decisions_multiplayer_celebrations\
set compatibility_override_folder_location=.\mod_files_smallerbuff_overrides\
set compatible_mod_folder_location=.\mod_files_smallerbuff\expanded_decisions_multiplayer_celebrations_smaller\





:: Delete any existing files in the compatible mod (except for the .mod file itself)
if exist %compatible_mod_folder_location% (
	del /F /S /Q %compatible_mod_folder_location%
	rmdir /S /Q %compatible_mod_folder_location%
)





:: Copy all files from normal version of mod to compatible version
xcopy /R /Y /Q /S /E /I %normal_mod_folder_location% %compatible_mod_folder_location%

:: Copy all override files to compatible version
xcopy /R /Y /Q /S /E /I %compatibility_override_folder_location% %compatible_mod_folder_location%





:: Delete all incompatible files/folders from the compatible version
:: (none)





::pause