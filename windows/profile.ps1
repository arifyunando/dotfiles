Set-Alias -Name c -Value Clear-Host
Set-Variable -Name Docs -Value "~\Documents"
Set-Variable -Name Repo -Value "~\Repositories"
Set-Variable -Name Drive -Value "~\OneDrive"

function Connect-HomeDocker {
  ssh docker-server.squirrel.home
}
  
function Connect-BTEService {
  ssh btservice@ssh.bteg.dev
}