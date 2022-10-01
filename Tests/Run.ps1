# This script is used for setting up the system package requirements and installing missing libraries
..\Setup\Setup_Config.ps1

# 
python ..\Setup\api_keystore_test.py

python ..\Setup\var_test.py