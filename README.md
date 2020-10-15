# python3-uno-dockerfile
> Repositorio de python3-uno basada en [python](https://hub.docker.com/_/python)

## ¿Como usarlo?

### Con DockerFile

```
FROM cambalab/python3-uno

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]
```

Podes hacer buld y correrla:

```
$ docker build -t my-python-app .
$ docker run -it --rm --name my-running-app my-python-app
```

### Solo Ejecutando un scripts

```
$ docker build -t my-python-uno . 
$ docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp my-python-uno python tu_script.py
```
