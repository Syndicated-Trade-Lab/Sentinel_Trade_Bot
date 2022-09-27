# Run this script from Powershell as an administrator

# Usage: powershell .\Setup_Config.ps1

# Install Chocolatey to your local machine if not already installed
$testchoco = powershell choco -v
if(-not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now"
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

    Write-Output " +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
    |C|h|o|c|o|l|a|t|e|y| |I|n|s|t|a|l|l| |C|o|m|p|l|e|t|e|
    +-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+"


}
else{
    Write-Output "Chocolatey Version $testchoco is already installed"
}

# or

if(test-path "C:\ProgramData\chocolatey\choco.exe"){

}

pause 
# Install python3+ to your local machine if not already isntalled

$testpython = powershell python --version
if(-not($testpython)){
    Write-Output "Seems Python is not installed, installing now"
    choco install python --version=3.8.0

    Write-Output " +-+-+-+-+-+-+ +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
    |P|y|t|h|o|n| |I|n|s|t|a|l|l| |C|o|m|p|l|e|t|e|
    +-+-+-+-+-+-+ +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+"
    Write-Output
    powershell python --version
    
}
else{
    Write-Output "Python Version $testpython is already installed"
}

# or

if(test-path "C:\ProgramData\python3*\python.exe"){

}

# Install pip to your local machine if not already isntalled


$testpip = powershell pip --version
if(-not($testpip)){
    Write-Output "Seems pip is not installed, installing now"
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py

    Write-Output " +-+-+-+ +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+
    |p|i|p| |I|n|s|t|a|l|l| |C|o|m|p|l|e|t|e|
    +-+-+-+ +-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+"
    pip --version

}
else{
    Write-Output "PIP Version $testpip is already installed"
}



