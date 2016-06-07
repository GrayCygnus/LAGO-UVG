package server;

import java.io.*;
import java.net.*;


public class TCPServer {
	public static void main(String args[]) throws Exception
	{
		String recibido = "";
		String enviar;		
		System.out.println("Iniciando Socket - Protocolo TCP");
		ServerSocket s = new ServerSocket(1111); //inicializa un nuevo socket
		
		while(true)
		{	System.out.println("Esperando conexion...");
			
			Socket conexion = s.accept(); //espera a una peticion del cliente
			
			System.out.println("Conexion Entrante..!");
			
			//procede a crear las variables para la data entrante..
			BufferedReader input = new BufferedReader(new InputStreamReader(conexion.getInputStream()));
			//...y la saliente
			DataOutputStream output = new DataOutputStream(conexion.getOutputStream());
			
			String fragmento = input.readLine();                        
                        recibido = fragmento;                        
			while(!fragmento.isEmpty() && input.ready())
			{                               
                try{
                    fragmento = input.readLine();                                
                }catch(Exception e)
                {
                    e.printStackTrace();
                }    
                recibido += fragmento;
			}	                       
			String[] datos = recibido.split("\\$"); //separador $ entre datos
            for(String ch : datos)
            {
                System.out.println(ch);
            }         
                        
			output.writeBytes("OK$"); //escribe en output 
			//s.close(); //cierra el socket
		}		
	}
}
