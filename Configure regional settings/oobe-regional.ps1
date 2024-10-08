# configure time zone
Get-TimeZone -ListAvailable | ?{$_.DisplayName -like "*Australia*"} | Set-TimeZone

# configure regional/locale/keyboard settings
# Hungarian
$region = "en-AU"

Set-Culture $region
Set-WinSystemLocale $region
Set-WinUserLanguageList $region, "en-us" -force -wa silentlycontinue
Set-WinHomeLocation 12

# copy regional settings to new user accounts and welcome screen
Copy-UserInternationalSettingsToSystem -WelcomeScreen $True -NewUser $True
