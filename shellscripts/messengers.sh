#!/bin/zsh
sleep 5
nohup devilspie  >/dev/null 2>&1 &
sleep 2
nohup /opt/skype_unofficial_client/skype >/dev/null 2>&1 &
nohup viber >/dev/null 2>&1 &
exit

