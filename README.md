# docker-flask-app


 ```bash
python3 -m venv venv
pip install -r requirenment.txt
```

```bash
docker build -t flask-app:v1.1 .
docker images
docker run -d -p 5001:5001 flask-app:v1.1
curl -v http://localhost:5001
```


 ```bash
docker run -d nginx
docker images
```


### For Mac [List All Network Interfaces]


 ```bash
ifconfig
networksetup -listallhardwareports
```

### For Linux [List All Network Interfaces]
 ```bash
ip link list
```

### We can install it via Homebrew:

 ```bash
brew install iproute2mac
```

 Then use:

 ```bash
ip link list
```