FROM alpine:3.17 AS build

RUN apk add --no-cache \
        git \
        make \
        cmake \
        gcc \
        g++ \
        libc-dev \
        # required for tests
        python3 && \
    git clone \
        --quiet \
        --depth 1 \
        --branch 0.29.0.gfm.6 \
        https://github.com/github/cmark-gfm.git app && \
    mkdir /app/build

WORKDIR /app/build
RUN cmake .. && \
    make -j2 && \
    make test

FROM alpine:3.17 AS final

COPY --from=build /app/build/src/cmark-gfm /usr/local/bin/cmark-gfm
COPY --from=build /app/build/src/libcmark-gfm.so.* /usr/local/lib
COPY --from=build /app/build/extensions/libcmark-gfm-extensions.so.* /usr/local/lib
COPY ./format_markdown /usr/local/bin/format_markdown
