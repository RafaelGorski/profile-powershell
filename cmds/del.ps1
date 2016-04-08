#original from https://github.com/AnthonyMastrean/WindowsPowerShell/blob/master/Cmdlets/del.ps1
function Remove-ItemNative {
  param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string] $path
  )

  cmd /C "del /f/s/q $path > nul"
  cmd /C "rmdir /s/q $path"
}