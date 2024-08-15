$ErrorActionPreference = 'Stop' # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/axonops/axonops-workbench-cassandra/releases/download/0.1.1-internal-20240815/AxonOps.Workbench-0.1.1-internal-20240815-win-x64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url64bit      = $url64

  softwareName  = 'AxonOpsWorkbench*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  checksum64    = 'e76cce5063c7fd94f8f9e3bada84a4b617e7d737dedec4ad7513f5262c5cc399'
  checksumType64= 'sha256'

  # MSI
  silentArgs   = '/s'           # InstallShield
}

Install-ChocolateyPackage @packageArgs

# code: language=powershell