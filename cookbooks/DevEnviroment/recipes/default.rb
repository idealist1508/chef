#
# Cookbook Name:: DevEnviroment
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
 
windows_package 'Mozilla Firefox 39.0 (x86 de)' do
  source "http://archive.mozilla.org/pub/mozilla.org/mozilla.org/firefox/releases/latest/win32/de/Firefox%20Setup%2039.0.exe"
  action :install
  installer_type :custom
  options '-ms'
end

windows_package 'JetBrains ReSharper 8.2.3' do 
  source 'http://download.jetbrains.com/resharper/ReSharperSetup.8.2.3000.5195.msi' 
  action :install 
end 

windows_package 'NCrunch for Visual Studio 2013' do 
  source 'http://downloads.ncrunch.net/NCrunch_VS2013_2.15.0.9.msi' 
  action :install 
end 

windows_package 'Link Shell Extension' do
  source "http://schinagl.priv.at/nt/hardlinkshellext/HardLinkShellExt_X64.exe"
  action :install
  installer_type :custom
  options '/S'
end

windows_package 'SoftPerfect RAM Disk 3.4.6' do 
  source 'https://www.softperfect.com/download/freeware/ramdisk_setup.exe' 
  action :install 
end 

powershell_module "posh-git" do
  package_name "posh-git"
  source "https://github.com/dahlbyk/posh-git/zipball/master"
  destination "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\Modules"
end

windows_package 'Git Extensions 2.48.05' do 
  source 'http://downloads.sourceforge.net/project/gitextensions/Git%20Extensions/Version%202.48.05/GitExtensions-2.48.05-SetupComplete.msi?r=&ts=1435296808&use_mirror=netcologne' 
  action :install 
end 

windows_package 'Clink v0.4.4' do 
  source 'https://github.com/mridgers/clink/releases/download/0.4.4/clink_0.4.4_setup.exe' 
  action :install 
end 

windows_package 'JetBrains dotPeek 1.4.1' do 
  source 'https://download.jetbrains.com/resharper/JetBrains.dotPeek.2015.1.1.web.exe' 
  action :install 
  installer_type :custom
end 

windows_package 'ConEmu 150705.x64' do 
  source 'https://github.com/Maximus5/ConEmu/releases/download/v15.07.05/ConEmuSetup.150705.exe' 
  action :install 
  installer_type :custom
end 

windows_package 'AutoHotkey 1.1.22.03' do 
  source 'http://ahkscript.org/download/ahk-install.exe' 
  action :install 
  installer_type :custom
end 
