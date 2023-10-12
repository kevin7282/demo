#powershell
# output network output
nslookup google.com | Out-File d:\test.txt
Get-Process | Out-File d:\test.txt
notepad d:\test.txt

# Get repos to windows host
$repos = @(
"demo-dns",
"demo-gateway",
"demo-hosts",
"demo-portal",
"demo-router",
"demo-splunk",
"demo-usermgmt",
"demo-webapp")


foreach ($element in $repos) {
  $repo = "git clone https://kevin@demo-bitbucket.local/scm/chef/"  
  $repo += $element
  $repo += ".git C:\Chef\"
  $repo += $element
 
  powershell $repo
}

# push the code to github
foreach ($element in $repos) {
  Copy-Item "C:\Users\Kevin\demo_com.pfx" -Destination "C:\Terraform\$element"
}

<# 
push pfx file from multiple locations to git
powershell.exe .\PushtoBitbucket.ps1
#> 
foreach ($element in $repos) {
  Set-Location -Path "C:\Terraform\$element"
  Start-Sleep -s 2
  git pull
  git add .
  git commit -m "Updated certs for demo_com.pfx"
  git push
  Set-Location -Path "C:\Workspace\Powershell" 
}
