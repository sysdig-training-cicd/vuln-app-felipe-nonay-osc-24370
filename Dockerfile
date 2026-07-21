# Insecure base image
FROM sysdiglabs/dummy-vuln-app:latest

# Bad practice: Using ADD instead of COPY
ADD . /foo

ADD https://static.egonrijpkema.nl/parkeergarage.jpg /

# Bad practice: Exposing secrets in Environment Variables
ENV AWS_ACCESS_KEY_ID thankful_bottle_15977
ENV AWS_SECRET_ACCESS_KEY my_key
ENV AWS_DEFAULT_REGION my_region

# Bad practice: Using a Package Manager in the image build
RUN pip install requests

# Bad practice: Using default user root
ENTRYPOINT ["python", "./app.py"]
