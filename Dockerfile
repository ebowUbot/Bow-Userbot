#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Bow-Userbot https://github.com/ebowUbot/Bow-Userbot.git /home/EbowUserbot/ \
    && chmod 777 /home/EbowUserbot \
    && mkdir /home/EbowUserbot/bin/

COPY ./sample_config.env ./config.env* /home/EbowUserbot/

WORKDIR /home/EbowUserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
