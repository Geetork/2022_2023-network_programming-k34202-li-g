University: [ITMO University](https://itmo.ru/ru/) <br/>
Faculty: [FICT](https://fict.itmo.ru) <br/>
Course: [Network programming](https://github.com/itmo-ict-faculty/network-programming) <br/>
Year: 2022/2023 <br/>
Group: K34202 <br/>
Author: Li Galina <br/>
Lab: Lab1 <br/>
Date of create: 24.09.2022 <br/>
Date of finished: x.09.2022 <br/>

# Лабораторная работа №1 "Установка CHR и Ansible, настройка VPN"

## Описание
   Данная работа предусматривает обучение развертыванию виртуальных машин (VM) и системы контроля конфигураций Ansible а также организации собственных VPN серверов.

## Цель работы
   Целью данной работы является развертывание виртуальной машины на базе платформы Microsoft Azure с установленной системой контроля конфигураций Ansible и установка CHR в VirtualBox

## Ход работы:
   В процессе выполнения лабораторной работы были выпонены следующие шаги:
   ### 1. На VirtulalBox была установлена CHR ###
   
[<img src="https://user-images.githubusercontent.com/58363643/192085619-50606ffc-7ae9-4ab7-8d73-92a6eb3c5151.png" width="500"/>](https://user-images.githubusercontent.com/58363643/192085619-50606ffc-7ae9-4ab7-8d73-92a6eb3c5151.png)

   - Определен ip-адрес Microtic
   
   [<img src="https://user-images.githubusercontent.com/58363643/192295666-cfac6467-8be0-4a23-87f7-24ff5e5b3e45.png" width="500"/>](https://user-images.githubusercontent.com/58363643/192295666-cfac6467-8be0-4a23-87f7-24ff5e5b3e45.png)


   ### 2. Создана виртуальная машина с помощью Yandex Compute Cloude. На ВМ установлена Ubuntu 22.04 ###
  
[<img src="https://user-images.githubusercontent.com/58363643/192537987-2a376dff-bf55-4b70-8289-7d4b0f5ae092.png" width="500"/>](https://user-images.githubusercontent.com/58363643/192537987-2a376dff-bf55-4b70-8289-7d4b0f5ae092.png)

   - Для доступа к ВМ была создана пара ключей SHH c помощью PuttyGen;

   ### 3. Был создан OpenVPN-сервер ###
   - Был скачан и запущен скрипт openvpn-install.sh.
   
[<img src="https://user-images.githubusercontent.com/58363643/192540544-a9675926-02d3-42de-b645-6d72a68860aa.png" width="200"/>](https://user-images.githubusercontent.com/58363643/192540544-a9675926-02d3-42de-b645-6d72a68860aa.png)

   - Был скопирован файл конфигурации для клиента client.ovpn.

   ### 4. На Ubuntu была установлена система Ansible ###
 
[<img src="https://user-images.githubusercontent.com/58363643/192289488-1183a4c1-bf62-4e5a-9809-845c28a2360b.png" width="400"/>](https://user-images.githubusercontent.com/58363643/192289488-1183a4c1-bf62-4e5a-9809-845c28a2360b.png)
   
   ### 5. Подключение Microtic к OVPN было выпонено с помощью OVPN Connect ###
   - В OVPN Connect был импортирован client.ovpn.

[<img src="https://user-images.githubusercontent.com/58363643/192484636-0964ae67-0534-4556-8f23-8a37389d4a57.png" width="200"/>](https://user-images.githubusercontent.com/58363643/192484636-0964ae67-0534-4556-8f23-8a37389d4a57.png) [<img src="https://user-images.githubusercontent.com/58363643/192484582-de4282a5-f280-4829-8791-3351b9b93dba.png" width="200"/>](https://user-images.githubusercontent.com/58363643/192484582-de4282a5-f280-4829-8791-3351b9b93dba.png)

   - Microtic был пропингован c Ubuntu.

[<img src="https://user-images.githubusercontent.com/58363643/192484760-270b0c8b-a413-4efa-84c2-351a8533f73a.png" width="400"/>](https://user-images.githubusercontent.com/58363643/192484760-270b0c8b-a413-4efa-84c2-351a8533f73a.png)

## Выводы ##
Таким образом, была создана виртуальная машина с установленной системой контроля конфигураций Ansible в облачном сервисе Yandex и виртуальная машина с установленной на ней RouterOS в VirtualBox. Был настроен VPN туннель между сервером автоматизации и локальным CHR. Проверена IP связность (Microtic пингуется с ВМ Yandex).
