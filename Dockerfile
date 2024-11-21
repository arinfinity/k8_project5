FROM python:3.9   

# Set the working directory to /code
WORKDIR /code 

# Copy requirements.txt to /code
COPY ./requirements.txt /code/requirements.txt 

# Install the Python dependencies from requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt 

# Copy the main Python file and HTML form to /code
COPY ./main.py /code/main.py 
COPY ./form.html /code/form.html 

# Command to run the application using uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
