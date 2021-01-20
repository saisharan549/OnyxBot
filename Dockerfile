FROM predator777alpha/onyxbot:master

RUN mkdir /Onyxbot && chmod 777 /Onyxbot
ENV PATH="/Onyxbot/bin:$PATH"
WORKDIR /Onyxbot

RUN git clone https://github.com/predator777alpha/Onyxbot -b master /Onyxbot

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /Onyxbot/

#
# Make open port TCP
#
EXPOSE 80 443

#
# Finalization
#
CMD ["python3","-m","userbot"]
