import socket
import ctypes
import os
import sys
HOST = "192.168.100.4"  
PORT = 65433
data = ""
hostname = socket.gethostname()
ip_address = socket.gethostbyname(hostname)
def connect():
    print(f"Trying to connect {HOST} ......")
    while True:
        okay = True
        try:
            s.connect((HOST, PORT))
        except:
            okay = False
        if (okay):
            break
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    connect()
    while True:
        try:
            data = s.recv(1024)
            print(f"Received {data!r}")
            if (data == b"Q"):
                print(f"Received {data!r}")
                ctypes.windll.WINMM.mciSendStringW(u"set cdaudio door open", None, 0, None)
                s.sendall(bytes(f"recieved Q {ip_address}","utf-8"))
            elif (data == b"S"):
                os.startfile("client.exe")
                sys.exit()
        except:
            sys.exit()

    
