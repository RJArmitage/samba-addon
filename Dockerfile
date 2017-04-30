FROM %%BASE_IMAGE%%

# Add version
ENV VERSION %%VERSION%%
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache samba-server jq

# Copy data
COPY run.sh /
COPY smb.conf /etc/

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
