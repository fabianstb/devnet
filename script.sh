
echo "FROM python" > Dockerfile
echo "RUN apt-get update" >> Dockerfile
echo "RUN pip install flask" >> Dockerfile
echo "COPY index.html /home/app/templates/" >> Dockerfile
echo "COPY conect.py /home/app/" >> Dockerfile
echo "EXPOSE 8000" >> Dockerfile
echo "CMD python3 /home/app/conect.py" >> Dockerfile

docker build -t app .
docker run -t -d -p 8000:8000 --name app app