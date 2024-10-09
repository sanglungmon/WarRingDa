
if [[ $1 == "" ]]
then
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮ "
echo " ┈┣  🕰🕰 Set refresh time vps 🕰🕰 "
echo " ┈╰━┳━━━━━┳━━━━━━━━━━━━━━╯ "
echo " ┈╭━┻━━━━━┻━━━━━━━━━━━━━━╮ "
echo " ┈┣  🕰 1. Everyday 01:00 AM "
echo " ┈┣━━━━━━━━━━━━━━┫"
echo " ┈┣  🕰 2. Every 7 days "
echo " ┈┣━━━━━━━━━━━━━━┫"
echo " ┈┣  🕰 3. Every month "
echo " ┈┣━━━━━━━━━━━━━━┫"
echo " ┈┣  🕰 4. Customize it "
echo " ┈┣━━━━━━━━━━━━━━┫"
echo " ┈┣  🕰 5. Disable automatic restart "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯"
echo " "
read -p " ┈┣  Choose option : " opcao
else
opcao=$1
fi
case $opcao in
  01 | 1 )
  echo " 00 1 * * * root /sbin/reboot" > /etc/cron.d/reboot
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮ "
echo " ┈┣  🕰 Set refresh time vps 🕰 "
echo " ┈╰━━━━━━━┳━━━━━┳━━━━━━━━╯ "
echo " ┈╭━━━━━━━┻━━━━━┻━━━━━━━━╮ "
echo " ┈┣  🕰 Everyday 01:00 AM 🕰 "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯ "
service cron restart;;
  02 | 2 )
  echo " 0 0 * * 0 root /sbin/reboot" > /etc/cron.d/reboot
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮ "
echo " ┈┣  🕰 Set refresh time vps 🕰 "
echo " ┈╰━━━━━━━┳━━━━━┳━━━━━━━━╯ "
echo " ┈╭━━━━━━━┻━━━━━┻━━━━━━━━╮ "
echo " ┈┣  🕰 Every 7 days 🕰 "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯ "
service cron restart;;
  03 | 3 )
  echo " 0 0 1 * * root /sbin/reboot" > /etc/cron.d/reboot
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮ "
echo " ┈┣  🕰 Set refresh time vps 🕰 "
echo " ┈╰━━━━━━━┳━━━━━┳━━━━━━━━╯ "
echo " ┈╭━━━━━━━┻━━━━━┻━━━━━━━━╮ "
echo " ┈┣  🕰 Every month 🕰 "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯ "
service cron restart;;
  04 | 4 )
clear
  echo " "
  echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮ "
echo " ┈┣  🕰🕰 Example 🕰🕰 "
echo " ┈╰━━━━━━━┳━━━━━┳━━━━━━━━╯ "
echo " ┈╭━━━━━━━┻━━━━━┻━━━━━━━━╮ "
echo " ┈┣  🕰 0 * * * *   01:00 AM "
echo " ┈┣━━━━━━━━━━━━━━━━┫"
echo " ┈┣  🕰 0 */6 * * * 06:00 AM "
echo " ┈┣━━━━━━━━━━━━━━━━┫"
echo " ┈┣  🕰 30 3 * * *  03:30 AM "
echo " ┈┣━━━━━━━━━━━━━━━━┫"
echo " ┈┣  🕰 0 0 * * 0   Every 7 days "
echo " ┈┣━━━━━━━━━━━━━━━━┫"
echo " ┈┣  🕰 0 0 1 * *   Every month "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯"
  
read -p " Time ( 0 0 * * 0 ) : " Set
echo "$Set root /sbin/reboot" > /etc/cron.d/reboot
service cron restart
echo -e " ";;
 05 | 5 )
echo " " > /etc/cron.d/reboot
clear
cr
echo " ┈╭━━━━━━━━━━━━━━━━━━━━━━╮ "
echo " ┈┣  🕰 Restart vps has been shut down successfully 🕰 "
echo " ┈╰━━━━━━━━━━━━━━━━━━━━━━╯ "
service cron restart
echo -e " ";;
esac
