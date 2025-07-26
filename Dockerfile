FROM python:3.11-slim

# Install curl
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Copy script into container
WORKDIR /app
COPY generate-jwt.sh .
# Make script executable
RUN chmod +x generate-jwt.sh

# Default command
CMD ["./generate-jwt.sh"]

