ARG PYTHON_VERSION=3.10-slim-bullseye

FROM python:${PYTHON_VERSION}

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir -p /code

WORKDIR /code

RUN pip install poetry
COPY pyproject.toml poetry.lock /code/
RUN poetry config virtualenvs.create false
RUN poetry install --only main --no-root --no-interaction
COPY . /code
RUN poetry run python manage.py makemigrations
RUN poetry run python manage.py migrate
RUN poetry run python manage.py collectstatic --noinput
RUN poetry run python manage.py createsuperuser --noinput --username admin --email alina.rizvanova.2006@gmail.com

EXPOSE 8000

CMD ["gunicorn", "--bind", ":8000", "--workers", "2", "mysite.wsgi"]
