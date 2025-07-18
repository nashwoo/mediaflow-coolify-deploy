FROM python:3.10-slim-buster

WORKDIR /app

RUN apt-get update && apt-get install -y gcc libffi-dev python3-dev

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 7860

CMD ["uvicorn", "run.main_app:app", "--host", "0.0.0.0", "--port", "7860", "--workers", "4"]
