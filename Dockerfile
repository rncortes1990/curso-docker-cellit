FROM node
COPY app /home
ENV MONGODB_URI=mongodb://172.16.238.2:27017
ENV MONGODB_NAME=mongo-test
ENV PORT=8000
EXPOSE 8000
CMD ["/bin/bash","-c"," cd /home && npm install && node index.js"]