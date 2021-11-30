FROM python:2.7

RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app

RUN pip install moviepy pillow numpy flask scipy

# Downgrade this package for compatibility purposes
RUN pip install -U Werkzeug==0.16.0

COPY src/ src

WORKDIR /app/src