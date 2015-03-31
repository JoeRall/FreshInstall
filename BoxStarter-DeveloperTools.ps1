# To Run From Web:  http://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/JoeRall/FreshInstall/master/BoxStarter-Work.ps1

#### Boxstarter options
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true # Save my password securely and auto-login after a reboot

# Visual Studio
$installVS = Read-Host -Prompt "Do you want to install VS? (Y) - Yes / (N) - No: "
if ($installVS -eq '') { cinst -y VisualStudio2013Ultimate Blend SQL Win8SDK WindowsPhone80 WebTools }

#cinst -y xamarin-visualstudio
#cinst -y visualstudio2013-webessentials.vsix

#VS Extensions
Install-ChocolateyVsixPackage GlobalZoomLevel https://visualstudiogallery.msdn.microsoft.com/59260ee8-5e2d-4ca7-8dc5-4efcf7b61a81/file/130525/2/GlobalZoomLevel.vsix
Install-ChocolateyVsixPackage WebEssentials2013Update4 https://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/44/WebEssentials2013.vsix
Install-ChocolateyVsixPackage NUnitTestAdapater https://visualstudiogallery.msdn.microsoft.com/6ab922d0-21c0-4f06-ab5f-4ecd1fe7175d/file/66177/15/NUnitVisualStudioTestAdapter-1.2.vsix


#Git
cinst git.install
cinst notepad2
cinst p4merge
cinst devbox-gitsettings
