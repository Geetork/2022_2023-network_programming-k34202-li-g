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
   
   ### Настройка OpenVPN-сервера на Ubuntu ###
  
   1. На Яндексе была создана виртуальная машина с Ubuntu 20.
 
 [<img src="https://user-images.githubusercontent.com/58363643/194337771-2a7d7624-f915-4bbe-a98e-b2ad4b6c5cc1.png" width="500"/>](https://user-images.githubusercontent.com/58363643/194337771-2a7d7624-f915-4bbe-a98e-b2ad4b6c5cc1.png)

   2. Для подключения к ВМ по SHH была создана пара ключей c помощью PuttyGen.

   3. Был создан OpenVPN-сервер.
 
   [<img src="https://user-images.githubusercontent.com/58363643/193832234-a76fdabf-b294-4ea0-ae75-b179b688e50b.png" width="500"/>](https://user-images.githubusercontent.com/58363643/193832234-a76fdabf-b294-4ea0-ae75-b179b688e50b.png)
   
   4. Для того чтобы создать клиента и изменить конфигурацию OpenVPN-сервера, был использован Admin UI (https://\<server ip>:943/admin).
   
   [<img src="https://user-images.githubusercontent.com/58363643/193832162-1f2b3fe3-e663-4530-a8ca-dd27b150a7f9.png" width="500"/>](https://user-images.githubusercontent.com/58363643/193832162-1f2b3fe3-e663-4530-a8ca-dd27b150a7f9.png)
   
   5. В Network Settings/Protocol был выбран TCP, в Advanced VPN/TLS Control Channel Security было выбрано none.
   6. В разделе User Managment был создан клиент mikrotic и скачан профиль profile.ovpn для настройки OVPN-клиента. 

   5. На Ubuntu была установлена система Ansible (для лабораторной работы №2)
 
   [<img src="https://user-images.githubusercontent.com/58363643/192289488-1183a4c1-bf62-4e5a-9809-845c28a2360b.png" width="400"/>](https://user-images.githubusercontent.com/58363643/192289488-1183a4c1-bf62-4e5a-9809-845c28a2360b.png)

   ### Настройка OpenVPN-клиента на Mikrotic ###
   
   1. На VirtualBox была создана виртуальная машина с CHR.

[<img src="https://user-images.githubusercontent.com/58363643/194342179-72b204db-91ee-4e30-82c6-771b1909943b.png" width="400"/>](https://user-images.githubusercontent.com/58363643/194342179-72b204db-91ee-4e30-82c6-771b1909943b.png)

   2. Определен ip-адрес Microtic для работы с WinBox.
   
   [<img src="https://user-images.githubusercontent.com/58363643/192295666-cfac6467-8be0-4a23-87f7-24ff5e5b3e45.png" width="500"/>](https://user-images.githubusercontent.com/58363643/192295666-cfac6467-8be0-4a23-87f7-24ff5e5b3e45.png)

   3. В WinBox были загружены ключ и сертификат для настройки OpenVPN-клиента, в разделе PPP были выполнены настройки клиента.
   
   [<img src="https://user-images.githubusercontent.com/58363643/194342939-963e592a-2b66-462f-9c53-82732fe08c1d.png" width="500"/>](https://user-images.githubusercontent.com/58363643/194342939-963e592a-2b66-462f-9c53-82732fe08c1d.png)
   
   4. После нажатия на Apply VPN-туннель был настроен.
   
   [<img src="https://user-images.githubusercontent.com/58363643/194343315-7e4dff94-8ab7-41c7-b728-0ac5b60c8b17.png" width="500"/>](https://user-images.githubusercontent.com/58363643/194343315-7e4dff94-8ab7-41c7-b728-0ac5b60c8b17.png)
   
   5. Был пропингован CHR с Ubuntu.
   
   [<img src="https://user-images.githubusercontent.com/58363643/194344934-20610f84-feaf-4978-a505-b9dc354c975e.png" width="500"/>](https://user-images.githubusercontent.com/58363643/194344934-20610f84-feaf-4978-a505-b9dc354c975e.png)


   

## Выводы ##
Таким образом, была создана виртуальная машина с установленной системой контроля конфигураций Ansible в облачном сервисе Yandex и виртуальная машина с установленной на ней RouterOS в VirtualBox. Был настроен VPN туннель между сервером автоматизации и локальным CHR. Проверена IP связность (Mikrotic пингуется с ВМ Yandex).
