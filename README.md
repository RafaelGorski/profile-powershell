# profile-powershell
Gorski's Powershell profile script to load posh-git and posh-svn

What is the results or benefits?
Git and SVN Helpers in powershell command line.


![Posh Git](https://git-scm.com/book/en/v2/book/A-git-in-other-environments/images/posh-git.png "Posh Git")

# How to install it?
- git clone https://github.com/RafaelGorski/profile-powershell.git
- cd profile-powershell
- git submodule update --init
- cp .\Microsoft.PowerShell_profile.ps1 $profile

# Pre-requisites
Install Git
Install Tortoise-Svn
Install Powershell 2.0+  (Verify your version with $PSVersionTable.PSVersion command)


#References
https://git-scm.com/book/uz/v2/Git-in-Other-Environments-Git-in-Powershell
http://dahlbyk.github.io/posh-git/
https://github.com/imobile3/posh-svn