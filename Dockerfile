FROM python

WORKDIR /sources

COPY requirements.txt /sources/requirements.txt
RUN pip install -r requirements.txt

COPY ./ /sources/

ENV FLASK_APP program.py

CMD flask run -h 0.0.0.0
