CC=g++
CPPFLAGS=-I. -Werror -Wall -O3 -std=c++14
LDFLAGS=-lpcap


pcap_example: pcap_example.cpp
		$(CC) $(CPPFLAGS) -o pcap_throughput pcap_example.o $(LDFLAGS)

pcap_example.o: pcap_example.cpp
		$(CC) $(CPPFLAGS) -c pcap_example.cpp

