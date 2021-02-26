# sccm-localadmins-ci
SCCM Configuration Item for Detecting Non-Standard Local Administrators

This Configuration Item (CI) is written in PowerShell. It loops through "Local Adminstrators" group to find any user account added to this group besides standard "Administrator". Code is written with localized versions of Windows in mind. This CI can be added to dedicated Configuration Baseline (CB) or be a part of bigger CB.

LocalAdminsCI.ps - PowerShell code used in CI
FYV Check for Non-Standard Local Administrators CI.cab - Exported CI, can be imported directly to SCCM
FYV Check for Non-Standard Local Administrators CB.cab - Exported CB, can be imported directly to SCCM

Note to localized version of Windows.
Get-LocalGroupMember cmdlet returns localized description of group memebers. For example, for Russian version of Windows 10 it return "Пользователь" instead of "User". Code already handles English and Russian version of Windows 10, but if you are using somewhat different, you can either replace "Пользователь" to your localized version or add another ObjectClass check.
