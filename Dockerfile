# Use Alpine to keep the runtime image small and reduce the OS vulnerability surface.
FROM python:3.12-alpine

WORKDIR /app

# Copy only the application source into the runtime image.
COPY app ./app

# Run as a non-root user.
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

EXPOSE 8080

CMD ["python", "app/main.py"]
