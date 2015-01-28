FROM elgalu/docker-selenium
MAINTAINER akagisho <akagisho@gmail.com>

#====================================================================
# Script to run selenium standalone server for Chrome and/or Firefox
#====================================================================
COPY ./bin/*.sh /opt/selenium/
RUN  chmod +x /opt/selenium/*.sh

#================================
# Set -trustAllCertificates
#================================
ENV SELENIUM_SERVER_OPTS -trustAllSSLCertificates

#===================
# CMD or ENTRYPOINT
#===================
# Start a selenium standalone server for Chrome and/or Firefox
CMD ["/opt/selenium/entry_point.sh"]
