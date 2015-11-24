# pcap_example
An example snippet for using libpcap for parsing pcap files.

This is an example of C code used to read in a pcap file (as output by tcpdump or wireshark) with
the pcap library.   This code is only tested to work on my system (Ubuntu 15.04, OS X 10.5 and gcc),
so let me know if it doesn’t work on yours.

To use: install the pcap libraries on your system (libpcap-dev for Ubuntu) and compile with the
“-lpcap” switch.  For this program the command line arguments are a list of pcap files to read in.
The program keeps track of simple byte counts and traffic volume, but illustrates the use of
pcap_next and how to access the data in the packet (in this case to get at the IP header).

Caveat: this code is not actively maintained and is written in an obviously non-modern style.
