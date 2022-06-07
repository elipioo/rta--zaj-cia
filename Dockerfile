# From the source image
FROM python:3.8-slim-buster

# Copy requirements.txt outside the container
# to /app/ inside the container
COPY ./requirements.txt ./requirements.txt

# Install required packages
RUN pip install -r ./requirements.txt

# Copy model.pkl outside the container
# to /app/ inside the container
COPY . .

# Expose the container's port 3333
EXPOSE 5000

# When the container starts, run this
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]

