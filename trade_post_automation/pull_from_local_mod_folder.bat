@echo OFF

::Constants
set ck_mod_folder=.\..\..\..\Parado~1\Crusad~1\mod\
set mod_name=trade_post_automation
set modfiles_folder=.\mod_files\

::Set locations of files
set modfile_name=%mod_name%.mod
set moddir_name=%mod_name%\
set modfile_source=%ck_mod_folder%%modfile_name%
set modfile_dest_folder=%modfiles_folder%
set modfile_dest=%modfile_dest_folder%%modfile_name%
set moddir_source=%ck_mod_folder%%moddir_name%
set moddir_dest_folder=%modfiles_folder%
set moddir_dest=%moddir_dest_folder%%moddir_name%

::echo.
::echo Debugging:
::echo modfile_source = %modfile_source%
::if exist %modfile_source% ( echo --- This file or folder exists ) else ( echo --- This file or folder does not exist )
::echo modfile_dest = %modfile_dest%
::if exist %modfile_dest% ( echo --- This file or folder exists ) else ( echo --- This file or folder does not exist )
::echo moddir_source = %moddir_source%
::if exist %moddir_source% ( echo --- This file or folder exists ) else ( echo --- This file or folder does not exist )
::echo moddir_dest = %moddir_dest%
::if exist %moddir_dest% ( echo --- This file or folder exists ) else ( echo --- This file or folder does not exist )
::echo.

::Delete any existing files related to this mod
if exist %modfile_dest% ( del /F /Q %modfile_dest% )
if exist %moddir_dest% (
	del /F /S /Q %moddir_dest%
	rmdir /S /Q %moddir_dest%
)

::Copy the relevant files for this mod to the CK2 mod folder
xcopy /R /Y /Q %modfile_source% %modfile_dest_folder%
xcopy /R /Y /Q /S /E /I %moddir_source%* %moddir_dest%

::Pause, so that the user can see if there were any errors
::pause
::exit