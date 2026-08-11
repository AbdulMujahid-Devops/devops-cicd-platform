FROM python:3.12-slim
WORKDIR /app
COPY app ./app
RUN useradd --create-home appuser
USER appuser
EXPOSE 8080
CMD ["python", "app/main.py"]
