# Use the official Honeygain Docker image
FROM honeygain/honeygain:latest

# Set environment variables for login
ENV EMAIL="your_email@example.com"
ENV PASSWORD="your_password"
ENV DEVICE_NAME="MyDevice"

# Install necessary tools for logging (e.g., curl, bash)
RUN apt-get update && apt-get install -y curl && apt-get clean

# Copy the logging script into the container
COPY log_network_usage.sh /usr/local/bin/log_network_usage.sh
RUN chmod +x /usr/local/bin/log_network_usage.sh

# Run Honeygain and the logging script in parallel
CMD ["bash", "-c", "honeygain & /usr/local/bin/log_network_usage.sh"]
