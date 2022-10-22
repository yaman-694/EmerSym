FROM python:3.7.5-buster
RUN echo \
   && apt-get update \
   && apt-get --yes install apt-file \
   && apt-file update
RUN echo \
   && apt-get --yes install build-essential
ARG USER=nobody
RUN usermod -aG sudo $USER
RUN pip3 install --upgrade pip
COPY . /app
WORKDIR /app
RUN pip3 --no-cache-dir install -r requirements.txt
USER $USER
# Using 4000 here as you used 4000 in the code. Flask has a default of 5000
EXPOSE 4000
ENTRYPOINT ["python"]
CMD ["app/app.py"]