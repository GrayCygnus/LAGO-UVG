package cosmicfilter;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CosmicDictionary {
	//WORD BAG
	
	public Map<String,Integer> SPAM = new HashMap<String,Integer>();
	public Map<String,Integer> HAM = new HashMap<String,Integer>();
	public int totalWords = 0;
	public int totalSpam = 0;
	public int totalHam = 0;
	
	public CosmicDictionary(){}
	
	public CosmicDictionary(String source)
	{
		//Load source
		List<String> lines = null;
		try {
			lines = Files.readAllLines(Paths.get(source), Charset.forName("ISO-8859-1")); //trainCorpus.txt
			scanTrainingCorpus(lines);
			System.out.println("Scan OK");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	
	/**
	 * OJO
	 * Notar que aca se toman en cuenta solamente el 80% del corpus total
	 * los que corresponden a los elegidos para entrenamiento
	 * 
	 * */
	public void scanTrainingCorpus(List<String> lines)
	{
		for(String line : lines)			
		{
			//obtener clasificacion
			String[] words = line.split("\\s+");
			String[] sms = Arrays.copyOfRange(words, 1, words.length);
			String type = words[0]; //clase spam o ham
			if(type.equals("spam"))
			{
				for(String word : sms)
				{
					String w = word.toUpperCase();
					//si no existe agregar nueva entrada
					if(!SPAM.containsKey(w))
					{
						SPAM.put(w, 1);
						totalWords++;
					}
					else
					{
						//incrementar en uno
						int cant = SPAM.get(w);
						cant++;
						//remover
						SPAM.remove(w);
						//reinstertar
						SPAM.put(w, cant);						
					}					
				}
			}
			else
			{
				for(String word : sms)
				{
					String w = word.toUpperCase();
					//si no existe agregar nueva entrada
					if(!HAM.containsKey(w))
					{
						HAM.put(w, 1);
						totalWords++;
					}
					else
					{
						//incrementar en uno
						int cant = HAM.get(w);
						cant++;
						//remover
						HAM.remove(w);
						//reinstertar
						HAM.put(w, cant);						
					}					
				}
			}			
		}		
		//sumar totalSpam
		for(Integer i : SPAM.values())
		{
			totalSpam += i;
		}
		//sumar totalHam
		for(Integer i : HAM.values())
		{
			totalHam += i;
		}		
	}
}
