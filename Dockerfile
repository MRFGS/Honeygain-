# Set environment variables for login
# You can replace these values during the `docker build` or run command
FROM honeygain/honeygain:latest

ARG EMAIL="snyderseth961@gmail.com"
ARG PASSWORD="Seth2006#"
ARG DEVICE_NAME="MyDevice"

# Accept Terms of Use
# The command will run the application and accept the TOU
CMD ["honeygain", "-tou-accept", "-email", "${EMAIL}", "-pass", "${PASSWORD}", "-device", "${DEVICE_NAME}"]
