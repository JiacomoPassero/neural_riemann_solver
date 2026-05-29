FROM python:3

WORKDIR /usr/src/NEURALL_RIEMANN_SOLVER

#Copy and install dependecies (before any other file)
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

#copy the rest of the project
COPY . .

#CMD [ "python", "./your-daemon-or-script.py" ]
