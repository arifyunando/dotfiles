Set-Variable -Name Docs -Value "~\Documents"
Set-Variable -Name Repo -Value "~\Repositories"
Set-Variable -Name Drive -Value "~\OneDrive"
fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression

function Connect-HomeDocker {
  ssh docker-server.squirrel.home
}

function Connect-BTEService {
  ssh btservice@ssh.bteg.dev
}

function Get-GitLog {
  git log --all --oneline --graph --decorate
}

function Enter-OneAPIEnvironment {
  & cmd /c '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" & powershell'
}

Set-Alias -Name c -Value Clear-Host
Set-Alias -Name gitlog -Value Get-GitLog
Set-Alias -Name oneapi -Value Enter-OneAPIEnvironment