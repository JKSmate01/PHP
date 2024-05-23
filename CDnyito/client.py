import socket
import ctypes
import os
import sys
hostname = socket.gethostname()
ip_address = socket.gethostbyname(hostname)
t_id = ip_address.split('.')
HOST = f"{t_id[0]}.{t_id[1]}.{t_id[2]}."
C_HOST_try = 0
PORT = 65433
data = ""
while True:
        okay = False
        num = 0
        for i in range(0,80):
            sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            sock.settimeout(0.1)
            r = sock.connect_ex((f"{HOST}{i}", PORT))
            if (r == 0):
                print(f"Found port on {HOST}{i}...")
                okay = True
                num = i
                break
            else:
                print(f"Trying to connect to {HOST}{i}...")
                sock.close()
        if (okay):
            print(i)
            C_HOST_try = i
            break

def connect(C_HOST_try):
    while True:
        print(f"Trying to connect {HOST}{C_HOST_try} ......")
        okay = True
        try:
            s.connect((f"{HOST}{C_HOST_try}", PORT))
        except:
            okay = False
        if (okay):
            break
            
with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    #s.settimeout(1)
    connect(C_HOST_try)
    while True:
        try:
            data = s.recv(1024)
            print(f"Received {data!r}")
            if (data == b"Q"):
                print(f"Received {data!r}")
                ctypes.windll.WINMM.mciSendStringW(u"set cdaudio door open", None, 0, None)
                s.sendall(bytes(f"recieved Q {ip_address}","utf-8"))
                os.startfile("client.py")
                sys.exit()
            elif (data == b"S"):
                pass
                #os.startfile("client.exe")
                #sys.exit()
        except:
            os.startfile("client.exe")
            sys.exit()
    