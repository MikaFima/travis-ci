#!/bin/sh
mkdir -p ~/.rezzza/icu && cd ~/.rezzza/icu \
    && git clone --depth=50 https://github.com/jberkenbilt/debian-icu \
    && cd debian-icu/source \
    && echo "Configuring ICU..." \
    && ./runConfigureICU Linux --with-data-packaging=archive > /dev/null \
    && echo "Building ICU..." \
    && make -j4 > /dev/null \
    && echo "Installing ICU..." \
    && sudo make install > /dev/null \
    && /usr/bin/yes ' ' | pecl install intl-3.0.0

