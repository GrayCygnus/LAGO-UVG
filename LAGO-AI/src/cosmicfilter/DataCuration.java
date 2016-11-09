package cosmicfilter;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

/**
 * 43% EM 4194457
 * 14% Muones 1306531
 * 43% Lluvias 4184110
 * total 9685098
 * EM 4164592
 * 	Train (80%) 3331674
 * 	CV	(10%)	416459
 * 	Test (10%)	416459
 * Lluvias 4164592
 * 	Train (80%) 3331674
 * 	CV	(10%)	416459
 * 	Test (10%)	416459
 * Muon	1355914
 * 	Train (80%) 1084732
 * 	CV	(10%)	135591
 * 	Test (10%)	135991
 * @author Anai
 *
 */

public class DataCuration {
	static int totalEM = 0;
	static int totalMUON = 0;
	static int totalVMUON = 0;
	static int totalLLUVIAS = 0;
	
	public static void main(String[] args) throws IOException
	{
		//analizeCorpus("C:\\Users\\Anai\\Desktop\\Miguel\\LAGO\\LAGO-AI\\src\\cosmicfilter\\CosmicCorpus6.txt");
		//splitCorpusPro("C:\\Users\\Anai\\Desktop\\Miguel\\LAGO\\LAGO-AI\\src\\cosmicfilter\\CosmicCorpus6.txt");
		splitCorpus("C:\\Users\\Anai\\Desktop\\Miguel\\LAGO\\LAGO-AI\\src\\cosmicfilter\\CosmicCorpus6.txt");
	}
	
	/*
	public static void splitCorpusPro(String path) throws IOException{
		//Dado son muchos datos se debe optimizar el algoritmo
		//Se buscara recorrer una sola vez el Corpus
		//Se tendra contadores para cada eventoleido para ver a que archivo escribirlo
		
		int cantEM = 0;
		int cantMUON = 0;
		int cantRAINS = 0;
		int cantVMUON = 0;
		
		//escritores de corpus
		PrintWriter outTrain = new PrintWriter(new BufferedWriter(new FileWriter("C:\\Users\\Anai\\Desktop\\Miguel\\LAGO\\LAGO-AI\\src\\cosmicfilter\\CosmicTrain3.txt", true)));
		PrintWriter outCV = new PrintWriter(new BufferedWriter(new FileWriter("C:\\Users\\Anai\\Desktop\\Miguel\\LAGO\\LAGO-AI\\src\\cosmicfilter\\CosmicCV3.txt", true)));
		PrintWriter outTest = new PrintWriter(new BufferedWriter(new FileWriter("C:\\Users\\Anai\\Desktop\\Miguel\\LAGO\\LAGO-AI\\src\\cosmicfilter\\CosmicTest3.txt", true)));
		
		//Lector de datos
		BufferedReader reader = new BufferedReader(new FileReader(path));
	    String line;
	    System.out.println("Leyendo Datos");
	    while ((line = reader.readLine()) != null)	//DIVIDIR LOS eventos EM correspondientemente
	    {
	    	//revisar el tipo de dato
	    	//luego determinar en base a contador a cual archivo escribir
	    	if(line.contains("EM"))
	    	{
	    		if(cantEM < 3355567)
	    		{
	    			//Guardar en Train
	    			outTrain.println(line);	    			
	    		}
	    		else if(cantEM >= 3355567 && cantEM < 3355567 + 419445)
	    		{
	    			//Guardar en CV
	    			outCV.println(line);
	    		}
	    		else
	    		{
	    			//Guardar en Test
	    			outTest.println(line);
	    		}
	    		cantEM++;
	    	}
	    	else if(line.contains("Muon"))
	    	{
	    		if(cantMUON < 1045225)
	    		{
	    			//Guardar en Train
	    			outTrain.println(line);
	    		}
	    		else if(cantMUON >= 1045225 && cantMUON < 1045225  + 130653)
	    		{
	    			//Guardar en CV
	    			outCV.println(line);
	    		}
	    		else
	    		{
	    			//Guardar en Test
	    			outTest.println(line);
	    		}
	    		cantMUON++;
	    	}
	    	else if(line.contains("Lluvias"))
	    	{
	    		if(cantRAINS < 3347288)
	    		{
	    			//Guardar en Train
	    			outTrain.println(line);
	    		}
	    		else if(cantRAINS >= 3347288 && cantRAINS < 3347288 + 418411)
	    		{
	    			//Guardar en CV
	    			outCV.println(line);
	    		}
	    		else
	    		{
	    			//Guardar en Test
	    			outTest.println(line);
	    		}
	    		cantRAINS++;
	    	}
	    	else{
	    		System.out.println("ERROR!!! Dato Desconocido");
	    	}
	    	
	    }
	    
	    //Cerrar writers
	    outTrain.close();
	    outCV.close();
	    outTest.close();
	    System.out.println("FIN");
		
	}
	*/
	public static void splitCorpus(String path) throws IOException{
		//Crear tres archivos para train, cv y test
		Writer writer = null;
		int count = 0;
		int cantEM = 0;
		int cantMUON = 0;
		int cantVMUON = 0;
		int cantRAINS = 0;
		
		analizeCorpus(path);
		
		BufferedReader reader = new BufferedReader(new FileReader(path));
	    String line;
	    System.out.println("Leyendo EM");
	    
	    int ochenta = (int) (totalEM*0.8);
	    int diez = (int) (totalEM*0.1);
	    if(ochenta + diez + diez < totalEM){
	    	diez += (totalEM - (ochenta + 2*diez));	//sumar lo que falta
	    }
	    
	    while ((line = reader.readLine()) != null)	//DIVIDIR LOS eventos EM correspondientemente
	    {	
	    	//System.out.println(line);
	    	if(line.contains("EM")){
	    		//verificar a que archivo irá a parar
	    		if(cantEM < ochenta)
	    		{
	    			//primer 80% para train
	    			//System.out.println("Train");
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicTrain5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    			
	    		}
	    		else if(cantEM >= ochenta && cantEM < diez + ochenta)
	    		{
	    			//segundo 10% para cv
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicCV5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    		}
	    		else
	    		{
	    			//10% test
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicTest5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    		}
				cantEM++;
			}			
	    }
	    reader.close();
	    
	    System.out.println("Leyendo Lluvias");
	    
	    ochenta = (int) (totalLLUVIAS*0.8);
	    diez = (int) (totalLLUVIAS*0.1);
	    if(ochenta + diez + diez < totalLLUVIAS){
	    	diez += (totalLLUVIAS - (ochenta + 2*diez));	//sumar lo que falta
	    }
	    
	    reader = new BufferedReader(new FileReader(path)); //Dividirlos por Lluvias
	    while ((line = reader.readLine()) != null)
	    {
	    	//System.out.println(line);
	    	if(line.contains("Lluvias")){
	    		//verificar a que archivo irá a parar
	    		if(cantRAINS < ochenta)
	    		{
	    			//primer 80% para train
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicTrain5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    			
	    		}
	    		else if(cantRAINS >= ochenta && cantRAINS < diez + ochenta)
	    		{
	    			//segundo 10% para cv
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicCV5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    		}
	    		else
	    		{
	    			//10% test
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicTest5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    		}
	    		cantRAINS++;
			}			
	    }
	    reader.close();
	    
	    System.out.println("Leyendo Muones");
	    
	    ochenta = (int) (totalMUON*0.8);
	    diez = (int) (totalMUON*0.1);
	    if(ochenta + diez + diez < totalMUON){
	    	diez += (totalMUON - (ochenta + 2*diez));	//sumar lo que falta
	    }
	    
	    reader = new BufferedReader(new FileReader(path)); //Dividirlo por muones
	    while ((line = reader.readLine()) != null)
	    {
	    	//System.out.println(line);
	    	if(line.contains("Muon") && !line.contains("Vertical")){
	    		//verificar a que archivo irá a parar
	    		if(cantMUON < ochenta)
	    		{
	    			//primer 80% para train
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicTrain5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    			
	    		}
	    		else if(cantMUON >= ochenta && cantMUON < diez + ochenta)
	    		{
	    			//segundo 10% para cv
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicCV5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    		}
	    		else
	    		{
	    			//10% test
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicTest5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader lol
	    				e.printStackTrace();
	    			}
	    		}
	    		cantMUON++;
			}			
	    }
	    reader.close();
	    
	    System.out.println("Leyendo Muones Verticales");
	    
	    ochenta = (int) (totalVMUON*0.8);
	    diez = (int) (totalVMUON*0.1);
	    if(ochenta + diez + diez < totalVMUON){
	    	diez += (totalVMUON - (ochenta + 2*diez));	//sumar lo que falta
	    }
	    
	    reader = new BufferedReader(new FileReader(path)); //Dividirlo por muones
	    while ((line = reader.readLine()) != null)
	    {
	    	//System.out.println(line);
	    	if(line.contains("Vertical")){
	    		//verificar a que archivo irá a parar
	    		if(cantVMUON < ochenta)
	    		{
	    			//primer 80% para train
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicTrain5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    			
	    		}
	    		else if(cantVMUON >= ochenta && cantVMUON < diez + ochenta)
	    		{
	    			//segundo 10% para cv
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicCV5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    		}
	    		else
	    		{
	    			//10% test
	    			try {
	    			    PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter("CosmicTest5.txt", true)));
	    			    out.println(line);
	    			    out.close();
	    			} catch (IOException e) {
	    			    //exception handling left as an exercise for the reader
	    				e.printStackTrace();
	    			}
	    		}
	    		cantVMUON++;
			}			
	    }
	    reader.close();
		
	}
	
	public static void analizeCorpus(String path) throws IOException
	{
		System.out.println("Leyendo Corpus");
		//List<String> Lines = Files.readAllLines(Paths.get(path), Charset.forName("ISO-8859-1"));
		int cantEM = 0;
		int cantMUON = 0;
		int cantVMUON = 0;
		int cantRAINS = 0;
		int total = 0;
		
		BufferedReader reader = new BufferedReader(new FileReader(path));
	    String line;
	    while ((line = reader.readLine()) != null)
	    {
	    	//System.out.println(line);
	    	if(line.contains("EM")){
				cantEM++;
			}			
			else if(line.contains("Vertical")){
				cantVMUON++;
			}
			else if(line.contains("Lluvias")){
				cantRAINS++;
			}
			else
			{
				cantMUON++;
			}
	    	total++;
	    }
	    reader.close();	
	    
	    totalEM = cantEM;
	    totalMUON = cantMUON;
	    totalLLUVIAS = cantRAINS;
	    totalVMUON = cantVMUON;
		System.out.println("EM: "+((float)cantEM)+" MUON: "+((float)cantMUON)+" VMUON: "+((float)cantVMUON)+" Lluvias: "+((float)cantRAINS)+" Total: "+total);
	}

}
