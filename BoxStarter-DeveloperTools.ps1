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
Install-ChocolateyVsixPackage OpenInExternalBrowser https://visualstudiogallery.msdn.microsoft.com/46c0c49e-f825-454b-9f6a-48b216797eb5/file/136677/1/Tvl.VisualStudio.OpenInExternalBrowser.vsix
Install-ChocolateyVsixPackage AddNewFile https://visualstudiogallery.msdn.microsoft.com/3f820e99-6c0d-41db-aa74-a18d9623b1f3/file/140782/17/Add%20New%20File%20v2.1.39.vsix
Install-ChocolateyVsixPackage VSCommands https://visualstudiogallery.msdn.microsoft.com/c6d1c265-7007-405c-a68b-5606af238ece/file/106247/21/SquaredInfinity.VSCommands.VS12.vsix


#Git
cinst git.install
cinst notepad2
cinst p4merge
cinst devbox-gitsettings
