FROM python:2.7-onbuild

ADD requirements.txt /

ADD . /opt/whisper-backup

RUN cd /opt/whisper-backup && python setup.py install

WORKDIR /opt/whisper-backup/whisperbackup

ENTRYPOINT ["python", "whisperbackup.py"]
