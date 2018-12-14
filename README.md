# docker-hping3

This image consist of Hping3 tool. Hping3 tool is a TCP/IP analyzer that supported TCP, UDP or ICMP protocols.

## Usage:
git clone https://github.com/utkudarilmaz/docker-hping3.git

cd docker-hping3

docker build -t hping3:latest .

docker run -d hping3:latest hping3 <<target-ip>> [parameters]

### Or:

docker pull utkudarilmaz/hping3:latest

docker run -d utkudarilmaz/hping3:latest hping3 <<target-ip>> [parameters]


