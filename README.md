# IA² | python3-uno Dockerfile

<p align="center">
  <a target="_blank" rel="noopener noreferrer">
    <img width="220px" src="https://www.ia2.coop/public/ia2-logo-blue.png" alt="IA²" />
  </a>
</p>

<h4 align="center">Docker image for the IA² server</h4>

---

<p align="center" style="margin-top: 14px;">
  <a href="https://hub.docker.com/r/cambalab/python3-uno">
    <img src="https://img.shields.io/docker/v/cambalab/python3-uno?arch=amd64&sort=date" alt="Docker Image Version" height="20">
  </a>
  <a href="https://hub.docker.com/r/cambalab/python3-uno">
    <img src="https://img.shields.io/docker/pulls/cambalab/python3-uno.svg" alt="Docker Image Downloads" height="20">
  </a>
  <a
    href="https://github.com/instituciones-abiertas/python3-uno-dockerfile/blob/main/LICENSE"
  >
    <img
      src="https://img.shields.io/badge/License-GPL%20v3-blue.svg"
      alt="License" height="20"
    >
  </a>
  <a
    href="https://github.com/instituciones-abiertas/python3-uno-dockerfile/blob/main/CODE_OF_CONDUCT.md"
  >
    <img
      src="https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg"
      alt="Contributor Covenant" height="20"
    >
  </a>
</p>

## About

This repository is extended from the [`python`](https://hub.docker.com/_/python) image.

## How to use it

### DockerFile

Just copy this in a `Dockerfile` file.

```dockerfile
FROM cambalab/python3-uno

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]
```

Then build the image and run it:

```bash
docker build -t my-python-app .
docker run -it --rm --name my-running-app my-python-app
```

### Standalone

Use pip version default (22.1.2)
```bash
docker build -t my-python-uno . 
```
or set pip version
```bash
docker build -t my-python-uno --build-arg PIP_VERSION=valid_pip_version_in_python_3.8 .
```
After
```bash
docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp my-python-uno python tu_script.py
```

## License

[**GNU General Public License version 3**](https://opensource.org/licenses/GPL-3.0)
