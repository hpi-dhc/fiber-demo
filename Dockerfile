FROM python:3.7.6-buster
WORKDIR /fiber-demo
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
ENV FIBER_DB_TYPE=mysql
ENV FIBER_DB_USER=root
ENV FIBER_DB_PASSWORD=mysql
ENV FIBER_DB_HOST=db
ENV FIBER_DB_PORT=3306
ENV FIBER_DB_SCHEMA=fiber_db
EXPOSE 8999
COPY . .
RUN cd notebooks
CMD ["jupyter", "notebook", "--port", "8999", "--no-browser", "--allow-root"]