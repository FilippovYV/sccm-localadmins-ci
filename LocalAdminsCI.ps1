Get-LocalGroupMember -SID S-1-5-32-544 | ? { (($_.ObjectClass -eq 'User') -or ($_.ObjectClass -eq 'Пользователь')) -and (-not ($_.SID -like 'S-1-5-*-500')) }
