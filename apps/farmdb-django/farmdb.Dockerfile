FROM python:slim-buster
ENV PYTHONUNBUFFERED=1
RUN apt update && apt upgrade -y
RUN apt install -y binutils libproj-dev gdal-bin
WORKDIR /code
COPY ./Pipfile.lock /code
COPY ./Pipfile /code
RUN pip install pipenv; \
    pipenv install --system --deploy --ignore-pipfile
COPY . /code/
ENTRYPOINT sh 
CMD entrypoint.sh