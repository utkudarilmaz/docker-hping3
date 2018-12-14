# docker-hping3

This image consist of hping3 tool. 

Hping is a free packet generator and analyzer for the TCP/IP protocol. For detailed information you can check https://github.com/antirez/hping .

## Usage:
git clone https://github.com/utkudarilmaz/docker-hping3.git

cd docker-hping3

docker build -t hping3:latest .

docker run -d hping3:latest hping3 < target-ip > [parameters]

### Or:

docker pull utkudarilmaz/hping3:latest

docker run -d utkudarilmaz/hping3:latest hping3 < target-ip > [parameters]
