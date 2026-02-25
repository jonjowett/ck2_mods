cd .\..\expanded_decisions_multiplayer
cmd /C .\#generate_and_package_and_publish_all.bat

cd .\..\expanded_decisions_pdxrptg
cmd /C .\create_package.bat
cmd /C .\publish_to_local_mod_folder.bat

cd .\..\ck2_mp_tall_ek_compilation
cmd /C .\#generator.bat
cmd /C .\create_package.bat
cmd /C .\publish_to_local_mod_folder.bat