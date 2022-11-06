# zeskoTextUIV1

Thanks to <a href="https://github.com/Jaareet" target="_blank">@Jaareet</a> for fixing some issues of this script.

This script is an TextUI made for FiveM that includes different themes/styles/appearences for the server TextUI.

Previews; 
<img src="https://forum.cfx.re/uploads/default/original/4X/4/1/3/413aa6185743f699a8cc131107ee3b41b758857a.png" />
<br>
<img src="https://forum.cfx.re/uploads/default/original/4X/0/8/8/088e1b445b2bb30091dd79fbd46d1a1eca07e127.png" />

## **HOW TO USE**
Client Side:<br>
```lua
exports['zeskoTextUIV1']:showNewTextUI(text, timeouts, type)
```
<br>
Server Side:<br>
Via Export:<br>

```lua
exports['zeskoTextUIV1']:showNewTextUI(text, timeouts, type)

```
<br>
Via TriggerClientEvent:

```lua
TriggerClientEvent('zeskoTextUi:client:show', source, text, timeouts, type)
```
