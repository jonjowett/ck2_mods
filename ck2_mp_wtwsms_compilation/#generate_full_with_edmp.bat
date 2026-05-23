@echo OFF
echo.
echo.
echo.
echo ===================================================
echo ===================================================
echo.
echo        ED: MULTIPLAYER - REGENERATE - BEGIN        
echo.
echo ===================================================
echo ===================================================
echo.
echo.
echo.
@echo ON

cd .\..\expanded_decisions_multiplayer
cmd /C .\#generate_and_package_and_publish_all.bat

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo ===================================================
echo.
echo        ED: MULTIPLAYER - REGENERATE - END        
echo.
echo ===================================================
echo ===================================================
echo.
echo.
echo.
@echo ON





@echo OFF
echo.
echo.
echo.
echo ===================================================
echo ===================================================
echo.
echo      CK2 MP: WTWSMS COMP - REGENERATE - BEGIN      
echo.
echo ===================================================
echo ===================================================
echo.
echo.
echo.
@echo ON

cd .\..\ck2_mp_wtwsms_compilation
cmd /C .\#generator.bat

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo ===================================================
echo.
echo       CK2 MP: WTWSMS COMP - REGENERATE - END       
echo.
echo ===================================================
echo ===================================================
echo.
echo.
echo.
@echo ON





@echo OFF
echo.
echo.
echo.
echo ===================================================
echo ===================================================
echo.
echo    CK2 MP: WTWSMS COMP - PACKAGE/PUBLISH - BEGIN   
echo.
echo ===================================================
echo ===================================================
echo.
echo.
echo.
@echo ON

cmd /C .\create_package.bat
cmd /C .\publish_to_local_mod_folder.bat

@echo OFF
echo.
echo.
echo.
echo ===================================================
echo ===================================================
echo.
echo     CK2 MP: WTWSMS COMP - PACKAGE/PUBLISH - END    
echo.
echo ===================================================
echo ===================================================
echo.
echo.
echo.
@echo ON