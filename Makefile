.PHONY:clean
CC=gcc
CFLAGS=-Wall -g
BIN=ftpServer
OBJS=sysutil.o main.o session.o strutil.o ftp_nobody.o ftp_proto.o configure.o parse_conf.o command_map.o trans_data.o priv_sock.o priv_command.o
LIB=-lcrypt
$(BIN):$(OBJS)
	$(CC) $(CFLAGS) $^ -o $@ $(LIB)
%.o:%.cc
	$(CC) $(CFLAGS) -c $< -o $@ 
clean:
	rm -f *.o $(BIN)
