#Server Socket
#Miguel Novella Linares
#LAGO-UVG
import socket
import time

class Socket:
    """
    Socket generico
    """

    sock = None
    
    def __init__(self, sock): #Singleton
        if sock is None:
            #Crear uno nuevo
            self.sock = socket.socket(
                socket.AF_INET, socket.SOCK_STREAM)
        else:
            #Setear el socket
            self.sock = sock
    def bind(host, port):
        #Deberia ser bind((socket.gethostname()
        self.sock.bind((host, port))
        self.sock.listen(5);

    def connect(self, host, port):
        #Abrir una conexion TCP a la maquina host en el puerto port
        self.sock.connect((host, port))

    def write(self, msg):
        #Mandar el mensaje msg al host que estemos conectados
        totalsent = 0
        while totalsent < len(msg):
            sent = self.sock.send(bytes(msg[totalsent:], 'UTF-8'))
            if sent == 0:
                raise RuntimeError("socket connection broken")
            totalsent = totalsent + sent

    def read(self):
        #Recibir mensaje 
        chunks = []
        bytes_recd = 0
        done = False
        while not done:
            chunk = self.sock.recv(4096)
            if chunk == '':
                raise RuntimeError("socket connection broken")
                done = True
            chunks.append(chunk)
            bytes_recd = bytes_recd + len(chunk)
            if b'$' in chunk:
                done = True
        #print(''.join(chunks))
        print(b''.join(chunks).decode(encoding='UTF-8'))
        return b''.join(chunks).decode(encoding='UTF-8')


##Programa principal de la Raspberry pi
"""
Protocolo de envio
Se necesita enviar un identificador, temperatura, gps, tiempoFecha, data
la fecha dependera de si mandamos el long o no y GMT

LAGO

25.22
123 23 59
17/03/2016 14:56:51
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
OGAL
"""

socket_cliente = Socket(None)
socket_cliente.connect("172.20.14.178",1111)
mensaje = "LAGOUVG$25.22$123 23 59$"+time.strftime("%c")+"$1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25$OGAL\n"
#mensaje = "pela la verga\n"
#print(mensaje)
socket_cliente.write(mensaje)
socket_cliente.read()
#print("si sirve")
#confirmacion = socket_cliente.read




