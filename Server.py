import socket
import keyboard
import threading

HOST = "10.1.12.4"
PORT = 65433
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((HOST, PORT))
s.listen()
clients = []
addresses = []
def open_cds():
    for client in clients:
        client.send(b"Q")
    for i in range(len(clients)):
            try:
                data = clients[i].recv(1024)
                print(data)
            except:
                pass
def show_addresses():
    for address in addresses:
        print(address)
def commands():
    while True:
        event = keyboard.read_event()
        if event.event_type == keyboard.KEY_DOWN and event.name == 'q':
            print("The 'Q' key has been pressed!")
            open_cds()
        elif event.event_type == keyboard.KEY_DOWN and event.name == 'h':
            show_addresses()
        elif event.event_type == keyboard.KEY_DOWN and event.name == 's':
            for client in clients:
                client.send(b"S")
            break
def search():
    while True:
        conn, addr = s.accept()
        print(f"{addr} is Online!")
        conn.send('connected'.encode('utf-8'))
        clients.append(conn)
        addresses.append(addr)
t1 = threading.Thread(target=search)
t2 = threading.Thread(target=commands)
t1.start()
t2.start()
