FROM python:3.6
RUN apt-get update

RUN mkdir /University_project_round_2
WORKDIR /University_project_round_2
COPY . /University_project_round_2

RUN pip freeze > requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000