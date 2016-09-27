FROM swiftdocker/swift
# Set Swift Path
ENV PATH /usr/bin:$PATH
RUN mkdir /app  
COPY . /app  
RUN cd /app && swift build
