path=$(echo $PATH | cut -d ':' -f2)
hora=$(date +%H)

KEY1=1WRoOPBtF3lHmNnT3fcsPKl8Lgs_jAGs7u7Pa6wdxAqNPgYG
KEY2=1WRoX0VmX76QJws2ycoaIZK8Fpm_25UHWLsQkP7TZe5fJ4pui
KEY3=1WRobkEnxtHeMod5mQIvlvYXGuw_3a79uF3KUeHJsqGG4o6fw
KEY4=1WRofE2phuxx9421AdXphIabaR6_3fhg5g857Mo1eoyr81LrC
KEY5=1WRoj8j8TYXQ2vOzHUhoSt4kT8v_4QhsQeojrkftA7PSVL574
KEY6=1WRonE3ykhHtJL1t2lr0cfEu2av_598Fb9juEYrh2PsZPDHtm
KEY7=1WRor0NXpBiR1KEYJPqOpTXtr5z_4cDKEqF2Mvod2hMHfHK7Z
KEY8=1WRovAaaUEqWz7yW6WTEeajVgFZ_rbcuzJ6nfqJ1H81C1Whb
KEY9=1WRoyuE4nEgJjynID6cmF3WHiS5_35Nf2Zof8NDVeA6VLGeZ4
KEY10=1WRp4UXUGi0QixXgwN7CTPqXQ6J_5STZw5AVBnnoCpvAJXfpj
KEY11=1WRp7e6MguZ0bktYnOfS9xyzpjm_Gp49y1mpRuCULuCZVGux
KEY12=1WRpCARR3gQxigRrQnQ7qw9nXoE_2z9HqdRbrtEsT5mC93KxD
KEY13=1WRpFfivf07wBv3c14vCUrT9plu_7QDSdMcLwA7nZ8fZs9LEV
KEY14=1WRpJ5C4OMUmCkKPfzZnD2nX9qf_3iE2RgyndUro3wrSUe14i
KEY15=1WRpNa1XT4Vpchge8X4eNcOWZjU_2uX85bEM1bbwUaH2FHHB3
KEY16=1WRpR9A1yGmAWE9LCuvs6CdzXrW_tZXR1hje6W87MXgLvahd
KEY17=1WRpULMM7RXpLoilq6MRDAv9MEk_3S4gVjhr22JjN5Fc3u72a
KEY18=1WRpY1dd9qWfx1HsDw8hFHQnOT5_7khHruisaH9L9bEBqTFRR
KEY19=1WRpbH7zlmVvb1jndxFr4O86I1g_7qKEnEeCbrdDgRcMvdPmn
KEY20=1WRpecOITX8IqoPocjpwFfPwPwt_5BM4c8yg81Q7Jzj9YeThz
KEY21=1WRpi2vk6sQs6NvFPPMufOCcijU_5oP5vGgkQM8ZLd6rPdkNt
KEY22=1WRplGrPZ4L3MliShQwYiyTuO5Z_6Za2YTNKMzA3nKMKhREaY
KEY23=1WRpoPaFcrBTA5gHgZZNojkvGdL_4NmJJAHh6LneUsyHfxS4x
KEY24=1WRprYDzMqHHWI3OTdv4kZsCZhM_6buq33vEfFfgQhbfUxSRE
KEY25=1WRpv0lvSV4zOCUIeQy596nJNS4_rCoHW9B839eAR1GC7KM4
KEY26=1WRpzt3WdW42qrEqzJaZiy6PnIa_2QG1TYfmYAjPh3ExY97Qw
KEY27=1WRq36Lctbq9ZIrj6LOCaB7DFrR_3JMDXVxH23CmhrQoG8g2k

linha=$(echo -e "\033[01;36m-=-=-=-=-=-=-=-=-=-=\033[01;00m")

clear
echo
echo $linha
echo -e "Para evitar problemas entre como \033[01;31mroot\033[01;00m para instalar!"
echo $linha
echo "Deseja instalar o ngrok para qual versao do Linux?"
echo "  (1) x86"
echo "  (2) x64"
echo $linha
echo
read -s escolhaBits
case $escolhaBits in
1)
touch ngrok-stable-linux-386.zip
rm ngrok-stable-linux-386.zip
wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
unzip -qq ngrok-stable-linux-386.zip
rm ngrok-stable-linux-386.zip
mv ngrok $path/ngrok

echo $KEY1 > $PWD/keys
echo $KEY2 >> $PWD/keys
echo $KEY3 >> $PWD/keys
echo $KEY4 >> $PWD/keys
echo $KEY5 >> $PWD/keys
echo $KEY6 >> $PWD/keys
echo $KEY7 >> $PWD/keys
echo $KEY8 >> $PWD/keys
echo $KEY9 >> $PWD/keys
echo $KEY10 >> $PWD/keys
echo $KEY11 >> $PWD/keys
echo $KEY12 >> $PWD/keys
echo $KEY13 >> $PWD/keys
echo $KEY14 >> $PWD/keys
echo $KEY15 >> $PWD/keys
echo $KEY16 >> $PWD/keys
echo $KEY17 >> $PWD/keys
echo $KEY18 >> $PWD/keys
echo $KEY19 >> $PWD/keys
echo $KEY20 >> $PWD/keys
echo $KEY21 >> $PWD/keys
echo $KEY22 >> $PWD/keys
echo $KEY23 >> $PWD/keys
echo $KEY24 >> $PWD/keys
echo $KEY25 >> $PWD/keys
echo $KEY26 >> $PWD/keys
echo $KEY27 >> $PWD/keys

KEY=$(cat $PWD/keys | shuf -n1)

ngrok authtoken "$KEY"

rm /root/.ngrok2/ngrok.yml

authtoken=$(echo "authtoken: $KEY" > /root/.ngrok2/ngrok.yml)
region=$(echo "region: sa" >> /root/.ngrok2/ngrok.yml)
tunnels=$(echo "tunnels:" >> /root/.ngrok2/ngrok.yml)
http=$(echo "  http:" >> /root/.ngrok2/ngrok.yml)
addr80=$(echo "    addr: 80" >> /root/.ngrok2/ngrok.yml)
protoHttp=$(echo "    proto: http" >> /root/.ngrok2/ngrok.yml)
tcp=$(echo "  tcp:" >> /root/.ngrok2/ngrok.yml)
addr443=$(echo "    addr: 443" >> /root/.ngrok2/ngrok.yml)
protoTcp=$(echo "    proto: tcp" >> /root/.ngrok2/ngrok.yml)

$authtoken
$region
$tunnels
$http
$addr80
$protoHttp
$tcp
$addr443
$protoTcp

echo "ngrok start --all" >> autongrok
chmod +x autongrok
mv autongrok /usr/local/bin/autongrok

touch trocarKey
chmod +x trocarKey
mv trocarKey /usr/local/bin/trocarKey

echo "wget -q https://raw.githubusercontent.com/eduardbuzzi/ngr0k/master/trocarKey" > $path/trocarKey
echo "wget -q https://raw.githubusercontent.com/eduardbuzzi/ngr0k/master/keys" >> $path/trocarKey
echo "cat keys | shuf -n1 > /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 1 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 2 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 3 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 4 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 5 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 6 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 7 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 8 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "rm keys" >> $path/trocarKey
echo "rm trocarKey" >> $path/trocarKey

rm keys

touch ngrok-desinstalar
chmod +x ngrok-desinstalar
mv ngrok-desinstalar $path/ngrok-desinstalar

rmNgrok2=$(echo "rm -rf ./.ngrok*")
rmAutongrok=$(echo "rm $path/autongrok")
rmNgrok=$(echo "rm $path/ngrok")
rmTrocarKey=$(echo "rm $path/trocarKey")
rmNgrokDesinstalar=$(echo "rm $path/ngrok-desinstalar")

echo $rmNgrok2 > $path/ngrok-desinstalar
echo $rmAutongrok >> $path/ngrok-desinstalar
echo $rmNgrok >> $path/ngrok-desinstalar
echo $rmTrocarKey >> $path/ngrok-desinstalar
echo $rmNgrokDesinstalar >> $path/ngrok-desinstalar

if [ $hora -ge '00' ] && [ $hora -le '05' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA MADRUGADA!"
echo $linha
echo
fi

if [ $hora -ge '06' ] && [ $hora -le '11' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha um BOM DIA!"
echo $linha
echo
fi

if [ $hora -ge '12' ] && [ $hora -le '17' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA TARDE!"
echo $linha
echo
fi

if [ $hora -ge '18' ] && [ $hora -le '23' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA NOITE!"
echo $linha
echo
fi

echo $linha
echo -e "Utilize '\033[01;31mautongrok\033[01;00m' no Terminal para abrir o Ngrok configurado."
echo -e "Utilize '\033[01;31mtrocarKey\033[01;00m' para trocar de Key caso esteja com problema."
echo -e "Utilize '\033[01;31mngrok-desinstalar\033[01;00m' para desinstalar o ngrok."
echo $linha
echo -e "Script desenvolvido por: \033[01;34mEduardo Buzzi\033[01;00m"
echo -e "Mais Scripts em: \033[01;34mhttps://github.com/eduardbuzzi\033[01;00m"
echo $linha
sleep 1
echo "Ngrok vai ser executado automaticamente em: 5"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 4"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 3"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 2"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 1"
sleep 0.5

xterm -hold -e 'autongrok'

exit
;;

2)
touch ngrok-stable-linux-amd64.zip
rm ngrok-stable-linux-amd64.zip
wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip -qq ngrok-stable-linux-amd64.zip
rm ngrok-stable-linux-amd64.zip
mv ngrok $path/ngrok

echo $KEY1 > $PWD/keys
echo $KEY2 >> $PWD/keys
echo $KEY3 >> $PWD/keys
echo $KEY4 >> $PWD/keys
echo $KEY5 >> $PWD/keys
echo $KEY6 >> $PWD/keys
echo $KEY7 >> $PWD/keys
echo $KEY8 >> $PWD/keys
echo $KEY9 >> $PWD/keys
echo $KEY10 >> $PWD/keys
echo $KEY11 >> $PWD/keys
echo $KEY12 >> $PWD/keys
echo $KEY13 >> $PWD/keys
echo $KEY14 >> $PWD/keys
echo $KEY15 >> $PWD/keys
echo $KEY16 >> $PWD/keys
echo $KEY17 >> $PWD/keys
echo $KEY18 >> $PWD/keys
echo $KEY19 >> $PWD/keys
echo $KEY20 >> $PWD/keys
echo $KEY21 >> $PWD/keys
echo $KEY22 >> $PWD/keys
echo $KEY23 >> $PWD/keys
echo $KEY24 >> $PWD/keys
echo $KEY25 >> $PWD/keys
echo $KEY26 >> $PWD/keys
echo $KEY27 >> $PWD/keys

KEY=$(cat $PWD/keys | shuf -n1)

ngrok authtoken "$KEY"

rm /root/.ngrok2/ngrok.yml

authtoken=$(echo "authtoken: $KEY" > /root/.ngrok2/ngrok.yml)
region=$(echo "region: sa" >> /root/.ngrok2/ngrok.yml)
tunnels=$(echo "tunnels:" >> /root/.ngrok2/ngrok.yml)
http=$(echo "  http:" >> /root/.ngrok2/ngrok.yml)
addr80=$(echo "    addr: 80" >> /root/.ngrok2/ngrok.yml)
protoHttp=$(echo "    proto: http" >> /root/.ngrok2/ngrok.yml)
tcp=$(echo "  tcp:" >> /root/.ngrok2/ngrok.yml)
addr443=$(echo "    addr: 443" >> /root/.ngrok2/ngrok.yml)
protoTcp=$(echo "    proto: tcp" >> /root/.ngrok2/ngrok.yml)

$authtoken
$region
$tunnels
$http
$addr80
$protoHttp
$tcp
$addr443
$protoTcp

echo "ngrok start --all" >> autongrok
chmod +x autongrok
mv autongrok /usr/local/bin/autongrok

touch trocarKey
chmod +x trocarKey
mv trocarKey /usr/local/bin/trocarKey

echo "wget -q https://raw.githubusercontent.com/eduardbuzzi/ngr0k/master/trocarKey" > $path/trocarKey
echo "wget -q https://raw.githubusercontent.com/eduardbuzzi/ngr0k/master/keys" >> $path/trocarKey
echo "cat keys | shuf -n1 > /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 1 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 2 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 3 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 4 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 5 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 6 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 7 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 8 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "rm keys" >> $path/trocarKey
echo "rm trocarKey" >> $path/trocarKey

rm keys

touch ngrok-desinstalar
chmod +x ngrok-desinstalar
mv ngrok-desinstalar $path/ngrok-desinstalar

rmNgrok2=$(echo "rm -rf ./.ngrok*")
rmAutongrok=$(echo "rm $path/autongrok")
rmNgrok=$(echo "rm $path/ngrok")
rmTrocarKey=$(echo "rm $path/trocarKey")
rmNgrokDesinstalar=$(echo "rm $path/ngrok-desinstalar")

echo $rmNgrok2 > $path/ngrok-desinstalar
echo $rmAutongrok >> $path/ngrok-desinstalar
echo $rmNgrok >> $path/ngrok-desinstalar
echo $rmTrocarKey >> $path/ngrok-desinstalar
echo $rmNgrokDesinstalar >> $path/ngrok-desinstalar

if [ $hora -ge '00' ] && [ $hora -le '05' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA MADRUGADA!"
echo $linha
echo
fi

if [ $hora -ge '06' ] && [ $hora -le '11' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha um BOM DIA!"
echo $linha
echo
fi

if [ $hora -ge '12' ] && [ $hora -le '17' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA TARDE!"
echo $linha
echo
fi

if [ $hora -ge '18' ] && [ $hora -le '23' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA NOITE!"
echo $linha
echo
fi

echo $linha
echo -e "Utilize '\033[01;31mautongrok\033[01;00m' no Terminal para abrir o Ngrok configurado."
echo -e "Utilize '\033[01;31mtrocarKey\033[01;00m' para trocar de Key caso esteja com problema."
echo -e "Utilize '\033[01;31mngrok-desinstalar\033[01;00m' para desinstalar o ngrok."
echo $linha
echo -e "Script desenvolvido por: \033[01;34mEduardo Buzzi\033[01;00m"
echo -e "Mais Scripts em: \033[01;34mhttps://github.com/eduardbuzzi\033[01;00m"
echo $linha
sleep 1
echo "Ngrok vai ser executado automaticamente em: 5"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 4"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 3"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 2"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 1"
sleep 0.5

xterm -hold -e 'autongrok'

exit
;;

*)

clear
echo
echo -e "CARA, tens que escolher entre \033[01;31m1 e 2\033[01;00m, se digitar novamente errado o instalador vai ser fechado!"
echo $linha
echo -e "Para evitar problemas entre como \033[01;31mroot\033[01;00m para instalar!"
echo $linha
echo "Deseja instalar o ngrok para qual versao do Linux?"
echo "  (1) x86"
echo "  (2) x64"
echo $linha
echo
read -s escolhaBits
case $escolhaBits in

1)
touch ngrok-stable-linux-386.zip
rm ngrok-stable-linux-386.zip
wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
unzip -qq ngrok-stable-linux-386.zip
rm ngrok-stable-linux-386.zip
mv ngrok $path/ngrok

echo $KEY1 > $PWD/keys
echo $KEY2 >> $PWD/keys
echo $KEY3 >> $PWD/keys
echo $KEY4 >> $PWD/keys
echo $KEY5 >> $PWD/keys
echo $KEY6 >> $PWD/keys
echo $KEY7 >> $PWD/keys
echo $KEY8 >> $PWD/keys
echo $KEY9 >> $PWD/keys
echo $KEY10 >> $PWD/keys
echo $KEY11 >> $PWD/keys
echo $KEY12 >> $PWD/keys
echo $KEY13 >> $PWD/keys
echo $KEY14 >> $PWD/keys
echo $KEY15 >> $PWD/keys
echo $KEY16 >> $PWD/keys
echo $KEY17 >> $PWD/keys
echo $KEY18 >> $PWD/keys
echo $KEY19 >> $PWD/keys
echo $KEY20 >> $PWD/keys
echo $KEY21 >> $PWD/keys
echo $KEY22 >> $PWD/keys
echo $KEY23 >> $PWD/keys
echo $KEY24 >> $PWD/keys
echo $KEY25 >> $PWD/keys
echo $KEY26 >> $PWD/keys
echo $KEY27 >> $PWD/keys

KEY=$(cat $PWD/keys | shuf -n1)

ngrok authtoken "$KEY"

rm /root/.ngrok2/ngrok.yml

authtoken=$(echo "authtoken: $KEY" > /root/.ngrok2/ngrok.yml)
region=$(echo "region: sa" >> /root/.ngrok2/ngrok.yml)
tunnels=$(echo "tunnels:" >> /root/.ngrok2/ngrok.yml)
http=$(echo "  http:" >> /root/.ngrok2/ngrok.yml)
addr80=$(echo "    addr: 80" >> /root/.ngrok2/ngrok.yml)
protoHttp=$(echo "    proto: http" >> /root/.ngrok2/ngrok.yml)
tcp=$(echo "  tcp:" >> /root/.ngrok2/ngrok.yml)
addr443=$(echo "    addr: 443" >> /root/.ngrok2/ngrok.yml)
protoTcp=$(echo "    proto: tcp" >> /root/.ngrok2/ngrok.yml)

$authtoken
$region
$tunnels
$http
$addr80
$protoHttp
$tcp
$addr443
$protoTcp

echo "ngrok start --all" >> autongrok
chmod +x autongrok
mv autongrok /usr/local/bin/autongrok

touch trocarKey
chmod +x trocarKey
mv trocarKey /usr/local/bin/trocarKey

echo "wget -q https://raw.githubusercontent.com/eduardbuzzi/ngr0k/master/trocarKey" > $path/trocarKey
echo "wget -q https://raw.githubusercontent.com/eduardbuzzi/ngr0k/master/keys" >> $path/trocarKey
echo "cat keys | shuf -n1 > /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 1 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 2 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 3 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 4 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 5 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 6 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 7 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 8 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "rm keys" >> $path/trocarKey
echo "rm trocarKey" >> $path/trocarKey

rm keys

touch ngrok-desinstalar
chmod +x ngrok-desinstalar
mv ngrok-desinstalar $path/ngrok-desinstalar

rmNgrok2=$(echo "rm -rf ./.ngrok*")
rmAutongrok=$(echo "rm $path/autongrok")
rmNgrok=$(echo "rm $path/ngrok")
rmTrocarKey=$(echo "rm $path/trocarKey")
rmNgrokDesinstalar=$(echo "rm $path/ngrok-desinstalar")

echo $rmNgrok2 > $path/ngrok-desinstalar
echo $rmAutongrok >> $path/ngrok-desinstalar
echo $rmNgrok >> $path/ngrok-desinstalar
echo $rmTrocarKey >> $path/ngrok-desinstalar
echo $rmNgrokDesinstalar >> $path/ngrok-desinstalar

if [ $hora -ge '00' ] && [ $hora -le '05' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA MADRUGADA!"
echo $linha
echo
fi

if [ $hora -ge '06' ] && [ $hora -le '11' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha um BOM DIA!"
echo $linha
echo
fi

if [ $hora -ge '12' ] && [ $hora -le '17' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA TARDE!"
echo $linha
echo
fi

if [ $hora -ge '18' ] && [ $hora -le '23' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA NOITE!"
echo $linha
echo
fi

echo $linha
echo -e "Utilize '\033[01;31mautongrok\033[01;00m' no Terminal para abrir o Ngrok configurado."
echo -e "Utilize '\033[01;31mtrocarKey\033[01;00m' para trocar de Key caso esteja com problema."
echo -e "Utilize '\033[01;31mngrok-desinstalar\033[01;00m' para desinstalar o ngrok."
echo $linha
echo -e "Script desenvolvido por: \033[01;34mEduardo Buzzi\033[01;00m"
echo -e "Mais Scripts em: \033[01;34mhttps://github.com/eduardbuzzi\033[01;00m"
echo $linha
sleep 1
echo "Ngrok vai ser executado automaticamente em: 5"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 4"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 3"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 2"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 1"
sleep 0.5

xterm -hold -e 'autongrok'

exit
;;

2)
touch ngrok-stable-linux-amd64.zip
rm ngrok-stable-linux-amd64.zip
wget -q https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip -qq ngrok-stable-linux-amd64.zip
rm ngrok-stable-linux-amd64.zip
mv ngrok $path/ngrok

echo $KEY1 > $PWD/keys
echo $KEY2 >> $PWD/keys
echo $KEY3 >> $PWD/keys
echo $KEY4 >> $PWD/keys
echo $KEY5 >> $PWD/keys
echo $KEY6 >> $PWD/keys
echo $KEY7 >> $PWD/keys
echo $KEY8 >> $PWD/keys
echo $KEY9 >> $PWD/keys
echo $KEY10 >> $PWD/keys
echo $KEY11 >> $PWD/keys
echo $KEY12 >> $PWD/keys
echo $KEY13 >> $PWD/keys
echo $KEY14 >> $PWD/keys
echo $KEY15 >> $PWD/keys
echo $KEY16 >> $PWD/keys
echo $KEY17 >> $PWD/keys
echo $KEY18 >> $PWD/keys
echo $KEY19 >> $PWD/keys
echo $KEY20 >> $PWD/keys
echo $KEY21 >> $PWD/keys
echo $KEY22 >> $PWD/keys
echo $KEY23 >> $PWD/keys
echo $KEY24 >> $PWD/keys
echo $KEY25 >> $PWD/keys
echo $KEY26 >> $PWD/keys
echo $KEY27 >> $PWD/keys

KEY=$(cat $PWD/keys | shuf -n1)

ngrok authtoken "$KEY"

rm /root/.ngrok2/ngrok.yml

authtoken=$(echo "authtoken: $KEY" > /root/.ngrok2/ngrok.yml)
region=$(echo "region: sa" >> /root/.ngrok2/ngrok.yml)
tunnels=$(echo "tunnels:" >> /root/.ngrok2/ngrok.yml)
http=$(echo "  http:" >> /root/.ngrok2/ngrok.yml)
addr80=$(echo "    addr: 80" >> /root/.ngrok2/ngrok.yml)
protoHttp=$(echo "    proto: http" >> /root/.ngrok2/ngrok.yml)
tcp=$(echo "  tcp:" >> /root/.ngrok2/ngrok.yml)
addr443=$(echo "    addr: 443" >> /root/.ngrok2/ngrok.yml)
protoTcp=$(echo "    proto: tcp" >> /root/.ngrok2/ngrok.yml)

$authtoken
$region
$tunnels
$http
$addr80
$protoHttp
$tcp
$addr443
$protoTcp

clear

echo "ngrok start --all" >> autongrok
chmod +x autongrok
mv autongrok /usr/local/bin/autongrok

touch trocarKey
chmod +x trocarKey
mv trocarKey /usr/local/bin/trocarKey

echo "wget -q https://raw.githubusercontent.com/eduardbuzzi/ngr0k/master/trocarKey" > $path/trocarKey
echo "wget -q https://raw.githubusercontent.com/eduardbuzzi/ngr0k/master/keys" >> $path/trocarKey
echo "cat keys | shuf -n1 > /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 1 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 2 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 3 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 4 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 5 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 6 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 7 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "head -n 8 trocarKey | tail -n 1 >> /root/.ngrok2/ngrok.yml" >> $path/trocarKey
echo "rm keys" >> $path/trocarKey
echo "rm trocarKey" >> $path/trocarKey

rm keys

touch ngrok-desinstalar
chmod +x ngrok-desinstalar
mv ngrok-desinstalar $path/ngrok-desinstalar

rmNgrok2=$(echo "rm -rf ./.ngrok*")
rmAutongrok=$(echo "rm $path/autongrok")
rmNgrok=$(echo "rm $path/ngrok")
rmTrocarKey=$(echo "rm $path/trocarKey")
rmNgrokDesinstalar=$(echo "rm $path/ngrok-desinstalar")

echo $rmNgrok2 > $path/ngrok-desinstalar
echo $rmAutongrok >> $path/ngrok-desinstalar
echo $rmNgrok >> $path/ngrok-desinstalar
echo $rmTrocarKey >> $path/ngrok-desinstalar
echo $rmNgrokDesinstalar >> $path/ngrok-desinstalar

if [ $hora -ge '00' ] && [ $hora -le '05' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA MADRUGADA!"
echo $linha
echo
fi

if [ $hora -ge '06' ] && [ $hora -le '11' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha um BOM DIA!"
echo $linha
echo
fi

if [ $hora -ge '12' ] && [ $hora -le '17' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA TARDE!"
echo $linha
echo
fi

if [ $hora -ge '18' ] && [ $hora -le '23' ]
then
echo
echo $linha
echo "NGROK INSTALADO, tenha uma BOA NOITE!"
echo $linha
echo
fi

echo $linha
echo -e "Utilize '\033[01;31mautongrok\033[01;00m' no Terminal para abrir o Ngrok configurado."
echo -e "Utilize '\033[01;31mtrocarKey\033[01;00m' para trocar de Key caso esteja com problema."
echo -e "Utilize '\033[01;31mngrok-desinstalar\033[01;00m' para desinstalar o ngrok."
echo $linha
echo -e "Script desenvolvido por: \033[01;34mEduardo Buzzi\033[01;00m"
echo -e "Mais Scripts em: \033[01;34mhttps://github.com/eduardbuzzi\033[01;00m"
echo $linha
sleep 1
echo "Ngrok vai ser executado automaticamente em: 5"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 4"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 3"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 2"
sleep 0.5
echo "Ngrok vai ser executado automaticamente em: 1"
sleep 0.5

xterm -hold -e 'autongrok'

exit
;;

*)
clear
echo "Eu avisei que o Instalador seria fechado se errase, era apenas escolher entre 1 e 2! =C"
exit
;;
esac
esac
