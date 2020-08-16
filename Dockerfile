FROM python:3.7
 
COPY src/ /opt/src
WORKDIR /opt/src
RUN pip install -r requirements.txt
LABEL com.circleci.preserve-entrypoint=true
ENTRYPOINT contacts
CMD ["python", "app.py"]