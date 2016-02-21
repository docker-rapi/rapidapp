FROM rapi/rapidapp-base:1.1005
MAINTAINER Henry Van Styn <vanstyn@cpan.org>

RUN cpanm \
 Gazelle \
 DBD::mysql DBD::Pg \
&& rm -rf .cpanm/

