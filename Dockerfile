FROM perl:5.22
MAINTAINER Henry Van Styn <vanstyn@cpan.org>

RUN cpanm --notest \
 RapidApp \
 Gazelle \
 DBD::mysql DBD::Pg \
&& rm -rf .cpanm/

