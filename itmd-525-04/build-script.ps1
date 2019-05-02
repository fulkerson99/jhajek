#mkdir xenial64-1,xenial64-2,xenail64-3,xenial64-4
vagrant plugin install vagrant-vbguest
Set-Location xenial64-1
vagrant up
Set-Location ../xenial64-2
vagrant up
Set-Location ../xenial64-3
vagrant up
Set-Location ../xenial64-4
if ( -not (Test-Path ./xenial64-4/data -PathType Any)) { new-item ./xenial64-4/data -itemtype directory }
mkdir data
vagrant up
Set-Location ../

