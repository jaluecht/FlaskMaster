FROM continuumio/miniconda3:4.8.2-alpine

# Command to build image: docker buld -t miniflask:1
# RUN apk update
# RUN apk version
# RUN mkdir -p /opt/
# COPY example.txt /opt/example.txt
# 
# CMD python3 -c "print('Hello container!')"

RUN /opt/conda/bin/conda install python=3.7.9 -y && /opt/conda/bin/conda install flask -y && mkdir -p /opt/apps
    
COPY api_v2.py /opt/apps/api_v2.py
COPY books.db /opt/apps/books.db
WORKDIR /opt/apps
EXPOSE 8888

ENTRYPOINT ["/opt/conda/bin/python", "api_v2.py"]
