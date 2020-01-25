FROM python:3.6

RUN apt-get update

RUN pip install notebook==5.7 numpy scipy scikit-image traitlets requests \
    bqplot ipywidgets ipyvolume matplotlib pandas ipyleaflet pythreejs ipyevents \
    ipysheet ipytree pywwt ipympl "voila>=0.1.2" jupyterlab ipyvuetify voila-vuetify

COPY . /widget-test

WORKDIR /widget-test

CMD ["sleep","infinity"]
