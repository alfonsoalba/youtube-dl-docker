Running [`youtube-dl`](https://ytdl-org.github.io/youtube-dl/index.html) from a docker container.

This project creates a docker image containing `ffmpeg`, `curl` and `youtube-dl` that will let you download
youtube videos from inside a container.

For the full description of the project, see [this blog post](https://www.alfonsoalba.com//2020/10/18/youtube-dl-using-docker.html?utm_source=github&utm_medium=link&utm_campaign=docker).

This script has been tested in OSX, Linux, and Windows 10 with WSL2.

Prerequisites:

* `make`

Clone this repository in a folder. Once cloned, cd into that folder.

To create the container:

```bash
> make build
```

To download a video (after building the container)

```bash
> docker run --rm -v $(pwd):/downloads youtube-dl "https://www.youtube.com/watch?v=Q_F9CxSmGOM"
```

Please, note that you need to quote the URL to avoid the shell to interpret characters like `?` or `&`.
