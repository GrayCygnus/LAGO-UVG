package cosmicfilter;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 43% EM
 * 14% Muones
 * 43% Lluvias
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
public class CosmicLog {
	//WORD BAG
	
	public Map<String, Integer> EM = new HashMap<String,Integer>();
	public Map<String,Integer> MUON = new HashMap<String,Integer>();
	public Map<String,Integer> VMUON = new HashMap<String,Integer>();
	public Map<String,Integer> RAINS = new HashMap<String,Integer>();
	
	public int totalEvents = 0;
	
	public int totalEM = 0;
	public int totalMUON = 0;
	public int totalVMUON = 0;
	public int totalRAINS = 0;
	
	public CosmicLog(){}
	
	public CosmicLog(String source) throws IOException
	{
		//Load source	
		//lines = Files.readAllLines(Paths.get(source), Charset.forName("ISO-8859-1")); //trainCorpus.txt
		scanTrainingCorpus(source);
		System.out.println("Scan OK");
				
	}
	
	/**
	 * OJO
	 * Notar que aca se toman en cuenta solamente el 80% del corpus total
	 * los que corresponden a los elegidos para entrenamiento
	 * @throws IOException 
	 * 
	 * */
	public void scanTrainingCorpus(String path) throws IOException
	{
		BufferedReader reader = new BufferedReader(new FileReader(path));
		
		String line;
		while ((line = reader.readLine()) != null)	//DIVIDIR LOS eventos EM correspondientemente
	    {
			//obtener clasificacion
			String[] taggedEvent = line.split("-"); //separar
			String type = taggedEvent[1].trim();	//obtener tipo de evento
			String[] rawEvent = taggedEvent[0].split("\\s+");	//separar puslo del evento
			String[] event = Arrays.copyOfRange(rawEvent, 0, rawEvent.length);
			
			if(type.equals("EM"))
			{
				for(int i = 0; i < 12; i++)
				{
					String charge = event[i];
					//si no existe agregar nueva entrada
					String t = i+"-"+charge;
					
					if(!EM.containsKey(t))
					{
						EM.put(t, 1);
						totalEvents++;
					}
					else
					{
						//incrementar en uno
						int cant = EM.get(t);
						cant++;
						//remover
						EM.remove(t);
						//reinstertar
						EM.put(t, cant);						
					}					
				}
			}
			else if(type.equals("VMUON"))
			{
				for(int i = 0; i < 12; i++)
				{
					String charge = event[i];
					//si no existe agregar nueva entrada
					String t = i+"-"+charge;
					
					if(!EM.containsKey(t))
					{
						EM.put(t, 1);
						totalEvents++;
					}
					else
					{
						//incrementar en uno
						int cant = EM.get(t);
						cant++;
						//remover
						EM.remove(t);
						//reinstertar
						EM.put(t, cant);						
					}					
				}
			}
			else if(type.equals("Muon"))
			{
				for(int i = 0; i < 12; i++)
				{
					String charge = event[i];
					//si no existe agregar nueva entrada
					String t = i+"-"+charge;
					
					if(!MUON.containsKey(t))
					{
						MUON.put(t, 1);
						totalEvents++;
					}
					else
					{
						//incrementar en uno
						int cant = MUON.get(t);
						cant++;
						//remover
						MUON.remove(t);
						//reinstertar
						MUON.put(t, cant);						
					}					
				}
			}
			else if(type.equals("Lluvias"))
			{
				for(int i = 0; i < 12; i++)
				{
					String charge = event[i];
					//si no existe agregar nueva entrada
					String t = i+"-"+charge;
					
					if(!RAINS.containsKey(t))
					{
						RAINS.put(t, 1);
						totalEvents++;
					}
					else
					{
						//incrementar en uno
						int cant = RAINS.get(t);
						cant++;
						//remover
						RAINS.remove(t);
						//reinstertar
						RAINS.put(t, cant);						
					}					
				}
			}
	    }		
		//sumar totalEM
		for(Integer i : EM.values())
		{
			totalEM += i;
		}
		//sumar totalMUON
		for(Integer i : MUON.values())
		{
			totalMUON += i;
		}
		//sumar totalRAINS
		for(Integer i : RAINS.values())
		{
			totalRAINS += i;
		}		
	}
}
