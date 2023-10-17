#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Bow-userbot https://github.com/ebowUbot/Bow-Userbot.git /home/Bowuserbot/ \
    && chmod 777 /home/Bowuserbot \
    && mkdir /home/Bowuserbot/bin/

COPY ./sample_config.env ./config.env* /home/Kazuuserbot/

WORKDIR /home/Bowuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
