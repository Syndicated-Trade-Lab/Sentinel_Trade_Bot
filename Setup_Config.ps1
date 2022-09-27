# Run this script from an administrator command shell

# Install Chocolatey to your local machine if not already installed
$testchoco = powershell choco -v
if(-not($testchoco)){
    Write-Output "Seems Chocolatey is not installed, installing now"
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else{
    Write-Output "Chocolatey Version $testchoco is already installed"
}

# or

if(test-path "C:\ProgramData\chocolatey\choco.exe"){

}

#install pip


