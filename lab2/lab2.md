University: [ITMO University](https://itmo.ru/ru/) <br/>
Faculty: [FICT](https://fict.itmo.ru) <br/>
Course: [Network programming](https://github.com/itmo-ict-faculty/network-programming) <br/>
Year: 2022/2023 <br/>
Group: K34202 <br/>
Author: Li Galina <br/>
Lab: Lab2 <br/>
Date of create: 06.10.2022 <br/>
Date of finished: x.10.2022 <br/>

# Лабораторная работа №2 "Развертывание дополнительного CHR, первый сценарий Ansible"

## Описание
   В данной лабораторной работе на практике изучается система управления конфигурацией Ansible, использующаяся для автоматизации настройки и развертывания программного обеспечения.

## Цель работы:
   С помощью Ansible настроить несколько сетевых устройств и собрать информацию о них. Правильно собрать файл Inventory.

## Ход работы:
   В процессе выполнения лабораторной работы были выпонены следующие шаги:
   
   ### Создание виртуальной машины на VirtualBox, установка CHR, организация OVPN-клиента ###
   
   1. Была создана виртуальная машина CHR_2 на VirtualBox.
   2. Был получен IP-адрес ВМ.
 
 ![image](https://user-images.githubusercontent.com/58363643/194368638-c09ea438-c855-4186-ba90-3c5b8cec3f70.png)
 
   3. Были получены сертификат и ключ для OVPN-клиента mikrotic2. В WInBox был имортированы сертификат и ключ, настроен OзoenVPN-клиент.
   
   ![image](https://user-images.githubusercontent.com/58363643/194483645-8d4def2c-4624-4226-8cb6-ee9f388117ba.png)


 
 
