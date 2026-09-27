#!/bin/bash
# Menu de power: suspender / sair / reiniciar / desligar.
case "$(printf 'Suspender\nSair\nReiniciar\nDesligar\n' | rofi -dmenu -i)" in
    Suspender)  systemctl suspend ;;
    Sair)       hyprctl dispatch exit ;;
    Reiniciar)  systemctl reboot ;;
    Desligar)   systemctl poweroff ;;
esac
