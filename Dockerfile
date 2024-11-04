FROM honeygain/honeygain:latest

ENV EMAIL="snyderseth961@gmail.com"
ENV PASSWORD="Seth2006#"
ENV DEVICE_NAME="LORDSETH"

# Run Honeygain with the Terms of Use acceptance flag
CMD ["honeygain/honeygain", "-tou-accept"]
