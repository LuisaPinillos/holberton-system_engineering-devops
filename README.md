## 0x09. Web infrastructure design

This project is about web infrastructure design. It seeks to explain what happens step by step since a user consults a website from her computer.

## Learning Objectives

- You must be able to draw a diagram covering the web stack you built with the sysadmin/devops track projects.
- You must be able to explain what each component is d.oing.
- You must be able to explain system redundancy.
- Know all the mentioned acronyms: LAMP, SPOF, QPS.

### 0. Simple web stack
A server web infrastructure that hosts the website that is reachable via www.foobar.com.

**This infrastructure uses:**
- 1 server
- 1 web server (Nginx)
- 1 application server
- 1 application files (code base)
- 1 database (MySQL)
- 1 domain name foobar.com configured with a www record that points to your server IP 8.8.8.8

[Link to Miro](https://miro.com/welcomeonboard/YmdyZFJjRG8yZk51bURCcTJNbmcxcHNzTUF5NmFqTEZkc2hqW[…]V1dXMDNLa3wzMDc0NDU3MzYwMDYxNDk1Njc1?invite_link_id=234368062410)

![image](https://user-images.githubusercontent.com/85319550/144319865-8596837a-6360-49fc-bd17-9e1df94ed5fe.png)

### 1. Distributed web infrastructure
A three server web infrastructure that hosts the website www.foobar.com.

**This infrastructure uses:**
- 2 server
- 1 web server (Nginx)
- 1 application server
- 1 load-balancer (HAproxy)
- 1 application files (code base)
- 1 database (MySQL)

[Link to Miro](https://miro.com/welcomeonboard/TUpnRGo3MVJWQTZGQkd2WDhpam9iOVNaRTBPMTUwRjFOYnRHa[…]ODgwaEdENHwzMDc0NDU3MzYwMDYxNDk1Njc1?invite_link_id=643413469214)

![image](https://user-images.githubusercontent.com/85319550/144319700-19fc2f6e-e2ac-4373-b4ec-ba5f16778d17.png)

### 2. Secured and monitored web infrastructure
A three server web infrastructure that hosts the website www.foobar.com, it is secured, serve encrypted traffic, and monitored.

**This infrastructure uses:**
- 2 server
- 3 firewalls
- 1 SSL certificate to serve www.foobar.com over HTTPS
- 3 monitoring clients (data collector for Sumologic)
- 1 web server (Nginx)
- 1 application server
- 1 load-balancer (HAproxy)
- 1 application files (code base)
- 1 database (MySQL)

[Link to Miro](https://miro.com/welcomeonboard/WjBlcW9JSEw5a0JDcjJ0dkx1ckFZWUlHNWVHc25YZVN0OUgxd[…]dk5DdzVHQXwzMDc0NDU3MzYwMjYxMzQwNzU3?invite_link_id=140828343080)

![image](https://user-images.githubusercontent.com/85319550/144319923-eb7cc8f6-bf79-43e4-9ea7-368508a4dfea.png)

### 3. Scale up
A three server web infrastructure that hosts the website www.foobar.com, it is secured, serve encrypted traffic, and monitored.

**This infrastructure uses:**
- 3 server
- 3 firewalls
- 1 SSL certificate to serve www.foobar.com over HTTPS
- 3 monitoring clients (data collector for Sumologic)
- 1 web server (Nginx)
- 1 application server
- 2 load-balancer (HAproxy)
- 1 application files (code base)
- 1 database (MySQL)

[Link to Miro](https://miro.com/welcomeonboard/Uk5HNzN6RUlnNlhDdGlKUU9vMnJSam54T0NRWWg3RU1NWmRCY3NaNnpiZ0NoNlB0M09iWmpuVks1OU9QSlRVM3wzMDc0NDU3MzYwMDYxNDk1Njc1?invite_link_id=837847826165)

![image](https://user-images.githubusercontent.com/85319550/144327910-ed9cad0a-b791-4d08-a1dc-111d3a60415a.png)

## AUTHORS

- [Carolina Lopera Correa](https://github.com/CarolinaLopera)
- [Luisa Fernanda Pinillos Villa](https://github.com/LuisaPinillos)
- [Laura Alejandra Cadavid Aguilar](https://github.com/LauraAlejandra2021)
