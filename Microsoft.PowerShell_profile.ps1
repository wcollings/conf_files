function prompt {
	$IsAdmin = (New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
	$CmdPromptUser = [Security.Principal.WindowsIdentity]::GetCurrent().Name.split("\")[1]
	$CmdPromptCurrentFolder = Split-Path -Path $pwd -Leaf
	Write-Host "$($CmdPromptUser)" -ForegroundColor Green -NoNewline
	Write-Host ":" -ForegroundColor White -NoNewline
	if ($CmdPromptCurrentFolder -eq $CmdPromptUser)
	{ Write-Host "~"  -ForegroundColor Blue -NoNewline}
	else { Write-Host "$CmdPromptCurrentFolder"  -ForegroundColor Blue -NoNewline}
	Write-Host ($(if ($IsAdmin) {'#'} else { '$' })) -ForegroundColor White -NoNewline
	Write-Host ( & $GitPromptScriptBlock) -NoNewline
	return ' '
}
Import-Module PSColor
Import-Module posh-git

$GitPromptSettings.DefaultPromptPath.Text = ''
$GitPromptSettings.DefaultPromptPrefix.Text = ''
$GitPromptSettings.DefaultPromptBeforeSuffix.Text = ''
$GitPromptSettings.DefaultPromptSuffix.Text = ''

Import-Module Get-ChildItemColor
If (-Not (Test-Path Variable:PSise)) {  # Only run this in the console and not in the ISE
    Import-Module Get-ChildItemColor
    
    Set-Alias l Get-ChildItem -option AllScope
    Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}


# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
