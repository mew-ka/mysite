## Проект блога.
Блог на python 3.10.4, версии Django > 5.0, использует poetry для настройки зависимостей.

#### Установка пререквизитов к проекту
- установить pyenv
  - https://github.com/pyenv/pyenv?tab=readme-ov-file#automatic-installer
- установить python 3.10.4
  - pyenv install 3.10.4 && pyenv global 3.10.4
- установить poetry
  - pip install poetry

#### Развертывание проекта локально
- Включить virtualenv через poetry shell
- Установить зависимости через poetry install

#### Запуск проекта
- poetry run python manage.py runserver
