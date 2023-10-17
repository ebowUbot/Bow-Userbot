#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Bow-Userbot https://github.com/ebowUbot/Bow-Userbot.git /home/ebowuserbot/ \
    && chmod 777 /home/ebowuserbot \
    && mkdir /home/Ebowuserbot/bin/

COPY ./sample_config.env ./config.env* /home/ebowuserbot/

WORKDIR /home/ebowuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
