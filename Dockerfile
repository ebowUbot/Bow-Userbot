#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Bow-Ubot https://github.com/ebowsxyz/Bow-Ubot /home/bowuserbot/ \
    && chmod 777 /home/bowuserbot \
    && mkdir /home/bowuserbot/bin/

#COPY ./sample_config.env ./config.env* /home/bowuserbot/

WORKDIR /home/bowuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
