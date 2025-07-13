FROM mysterysd/wzmlx:latest
#FROM docker.io/mysterysd/wzmlx:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

# Git ইনস্টল করা হচ্ছে
RUN apt-get update && apt-get install -y git

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
