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
 
      [<img src="https://user-images.githubusercontent.com/58363643/194368638-c09ea438-c855-4186-ba90-3c5b8cec3f70.png" width="400"/>](https://user-images.githubusercontent.com/58363643/194368638-c09ea438-c855-4186-ba90-3c5b8cec3f70.png)
 
   3. Были получены сертификат и ключ для OVPN-клиента mikrotic2. В WInBox были имортированы сертификат и ключ, настроен OзoenVPN-клиент.
   
      [<img src="https://user-images.githubusercontent.com/58363643/194483645-8d4def2c-4624-4226-8cb6-ee9f388117ba.png" width="400"/>](https://user-images.githubusercontent.com/58363643/194483645-8d4def2c-4624-4226-8cb6-ee9f388117ba.png)

   4. Проверена IP-связность между OVPN-сервером и СHR_2.
  
      [<img src="https://user-images.githubusercontent.com/58363643/194484729-7ca4c125-9226-4e5e-be35-cff2f26565b0.png" width="400"/>](https://user-images.githubusercontent.com/58363643/194484729-7ca4c125-9226-4e5e-be35-cff2f26565b0.png)
      
   ### Настройка CHR-машин с помощью Ansible

   5. Был настроен файл инвентаризации /etc/ansible/host.
      
      ```
      ansible-inventory --list -y
      ```
      [<img src="https://user-images.githubusercontent.com/58363643/194758918-07f5e987-d0a3-4084-901e-c6035c49a398.png" width="500"/>](https://user-images.githubusercontent.com/58363643/194758918-07f5e987-d0a3-4084-901e-c6035c49a398.png)

   7. Произведена проверка подключения.
   
      ```
      ansible all -m ping
      ```
      [<img src="https://user-images.githubusercontent.com/58363643/194758473-81a7018d-a803-4504-af01-267ff3425532.png" width="200"/>](https://user-images.githubusercontent.com/58363643/194758473-81a7018d-a803-4504-af01-267ff3425532.png)
    
   8. С помощью Ansible был создан пользователm user на роутерах. 
      
      [<img src="https://user-images.githubusercontent.com/58363643/195847727-0e73cc19-5d92-44ae-af6b-4d5dfd2d7d25.png" width="600"/>](https://user-images.githubusercontent.com/58363643/195847727-0e73cc19-5d92-44ae-af6b-4d5dfd2d7d25.png)

      [<img src="https://user-images.githubusercontent.com/58363643/195847578-98733f0e-5f6f-447d-8b01-743dee600202.png" width="400"/>](https://user-images.githubusercontent.com/58363643/195847578-98733f0e-5f6f-447d-8b01-743dee600202.png)
      
   9. Была выполнена проверка, создан ли пользователь
      
      [<img src="https://user-images.githubusercontent.com/58363643/195847651-3270f471-2f5e-4384-a1a6-769e0faa17a4.png" width="400"/>](https://user-images.githubusercontent.com/58363643/195847651-3270f471-2f5e-4384-a1a6-769e0faa17a4.png)
      
   10. На роутерах был настроен NTP-клиент

   [<img src="https://user-images.githubusercontent.com/58363643/195848107-909cf029-d623-4c3a-8120-36de1182bfe8.png" width="800"/>](https://user-images.githubusercontent.com/58363643/195848107-909cf029-d623-4c3a-8120-36de1182bfe8.png)

   [<img src="https://user-images.githubusercontent.com/58363643/195848394-72e8eca8-15c6-43c9-a290-aaeddb1cc59e.png" width="300"/>](https://user-images.githubusercontent.com/58363643/195848394-72e8eca8-15c6-43c9-a290-aaeddb1cc59e.png)
   
   11. Был настроен OSPF с помощью Ansible (в соответствии со схемой, представленной снизу)
      
       [<img src="https://user-images.githubusercontent.com/58363643/195873601-8520762e-dd3c-4575-9c24-447205cf6671.png" width="500"/>](https://user-images.githubusercontent.com/58363643/195873601-8520762e-dd3c-4575-9c24-447205cf6671.png)

   [<img src="https://user-images.githubusercontent.com/58363643/198066912-301266b6-db2c-4c9c-8c02-42c182d97ee0.png" width="700"/>](https://user-images.githubusercontent.com/58363643/198066912-301266b6-db2c-4c9c-8c02-42c182d97ee0.png)

   [<img src="https://user-images.githubusercontent.com/58363643/195847006-a29f1486-b38c-4018-80a0-412acd26588a.png" width="400"/>](https://user-images.githubusercontent.com/58363643/195847006-a29f1486-b38c-4018-80a0-412acd26588a.png)
   
   В разделе Neighbor в Winbox была выполнена проверка правильности настройки OSPF.
   
   [<img src="https://user-images.githubusercontent.com/58363643/198253239-940c7e50-6b10-4513-adf9-ab7605ffcf3c.png" width="500"/>](https://user-images.githubusercontent.com/58363643/198253239-940c7e50-6b10-4513-adf9-ab7605ffcf3c.png)


   Конфигурации роутеров были сохранены в файлах router.rsc, router2.rsc.
   
   [<img src="https://user-images.githubusercontent.com/58363643/195867882-33f2ff93-b341-422b-adba-3991f5d1da3d.png" width="500"/>](https://user-images.githubusercontent.com/58363643/195867882-33f2ff93-b341-422b-adba-3991f5d1da3d.png)
   
   [<img src="https://user-images.githubusercontent.com/58363643/198251486-6c28893b-0261-490b-b0f3-417c3959a359.png" width="500"/>](https://user-images.githubusercontent.com/58363643/198251486-6c28893b-0261-490b-b0f3-417c3959a359.png)



   ## Выводы
   Таким образом, были созданы Ansible-плейбуки для конфигурирования роутеров, был изучен протокол динамической маршрутизации OSPF.
 
