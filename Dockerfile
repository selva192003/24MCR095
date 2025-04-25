FROM python:3.14.0a7-alpine3.21

# Install required system dependencies
RUN apk add --no-cache build-base musl-dev linux-headers

# Install Python libraries
RUN pip install --upgrade pip && \
    pip install pandas scikit-learn matplotlib

# Copy and run your script
COPY . .
CMD [ "python", "hello_world_ml.py" ]
