FROM perl:5.22
MAINTAINER Henry Van Styn <vanstyn@cpan.org>

RUN cpan -i Bundle::CPAN && rm -rf .cpan/build .cpan/Metadata .cpan/sources
RUN cpanm RapidApp Gazelle DBD::mysql DBD::Pg

