FROM bash:4.4

COPY . .

CMD ["bash", "/task.sh"]
