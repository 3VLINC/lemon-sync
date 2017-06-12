FROM alpine:latest
RUN apk add --update py-pip gettext ca-certificates && pip install lemonsync
COPY entrypoint.sh /
COPY lemonsync.template.cfg /
ENV HOST=
ENV KEY=
ENV ACCESS=
ENV FILE_PATTERNS='[ "*" ]'
ENV IGNORE_PATTERNS='[ "*.tmp", "*.TMP", "*/.git*", "*.DS_Store", "*/node_modules/*" ]'
VOLUME ['/working_dir']
ENTRYPOINT /entrypoint.sh