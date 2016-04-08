# original from https://github.com/AnthonyMastrean/WindowsPowerShell/blob/master/Cmdlets/say.ps1
Add-Type -AssemblyName System.Speech

function Speak-Text {
  param(
    [Parameter(Mandatory = $true)]
    [string] $text
  )

  $voice = New-Object System.Speech.Synthesis.SpeechSynthesizer
  $voice.Speak($text)
}