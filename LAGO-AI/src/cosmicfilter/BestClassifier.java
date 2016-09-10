package cosmicfilter;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;

public class BestClassifier {
	
	public static void main(String[] args) throws IOException
	{
		//Iterar incrementando  K en +-0.01 en el rango de K's deseado
		//encontrar K con mejor performace en cross Validation
		//retornar la K que maximiza el performance
		double K = 0.0;
		double deltaK = 1.0;
		double bestK = 0.0;
		double maxK = 50.0;
		double bestScore = 0.0;
		
		System.out.println("Creando Diccionario con Train");
		CosmicLog dictionary = new CosmicLog("C:\\Users\\Anai\\Desktop\\Miguel\\LAGO\\LAGO-AI\\src\\cosmicfilter\\CosmicTrain.txt");
		
		//Corpus de Cross Validation		
		//Maximizar eficiencia de K
		System.out.println("Realizando Cross Validation; maximizar K");
		double score;
		
		CosmicClassifier c = new CosmicClassifier(dictionary, K);
		do
		{		
			c.setK(K);
			score = crossValidate(c);
			if(score > bestScore)
			{
				bestScore = score;
				bestK = K;
			}
			//System.out.println("K: "+K+", "+score+" %");
			System.out.println(K+" , "+score);
			
			K = K + deltaK;
		}while(K <= maxK);	
		
		System.out.println("La K que maximiza el CV es: "+bestK+" con puntaje: "+bestScore);
		
		
		
		//Probar con TEST
		System.out.println("Probando Test Final...");
		CosmicClassifier bestClassifier = new CosmicClassifier(dictionary, bestK);
		FINAL_TEST(bestClassifier);
		
	}
	
	public static double crossValidate(CosmicClassifier c) throws IOException
	{
		double CVScore = 0.0;
		double CVLines = 0.0;
		BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\Anai\\Desktop\\Miguel\\LAGO\\LAGO-AI\\src\\cosmicfilter\\CosmicCV.txt"));
		
		String line;
		while ((line = reader.readLine()) != null)	//DIVIDIR LOS eventos EM correspondientemente
	    {
			
			String[] taggedEvent = line.split("-"); //separar
			String answer = taggedEvent[1].trim();	//obtener tipo de evento
			String[] rawEvent = taggedEvent[0].split("\\s+");	//separar puslo del evento
			String[] event = Arrays.copyOfRange(rawEvent, 0, rawEvent.length);
			
			//String[] lineSplit = line.split("\\s+");
			//String[] message = Arrays.copyOfRange(lineSplit, 1, lineSplit.length);
			//String answer = lineSplit[1];
			
			String Y = c.ARG_MAX(event);
			if(Y.equals(answer))
			{
				CVScore += 1.0;
			}
			CVLines++;
		}
		
		CVScore = CVScore / CVLines;		
		//CVScore = CVScore / totalLines (132)
		return CVScore;
	}
	
	public static void FINAL_TEST(CosmicClassifier c) throws IOException
	{
		double TestScore = 0.0;
		double totalTest = 0.0;
		BufferedReader reader = new BufferedReader(new FileReader("C:\\Users\\Anai\\Desktop\\Miguel\\LAGO\\LAGO-AI\\src\\cosmicfilter\\CosmicTest.txt"));
		
		String line;
		while ((line = reader.readLine()) != null)	//DIVIDIR LOS eventos EM correspondientemente
	    {
			
			String[] taggedEvent = line.split("-"); //separar
			String answer = taggedEvent[1].trim();	//obtener tipo de evento
			String[] rawEvent = taggedEvent[0].split("\\s+");	//separar puslo del evento
			String[] event = Arrays.copyOfRange(rawEvent, 0, rawEvent.length);
			
			//String[] lineSplit = line.split("\\s+");
			//String[] message = Arrays.copyOfRange(lineSplit, 1, lineSplit.length);
			//String answer = lineSplit[0];
			
			String Y = c.ARG_MAX(event);
			if(Y.equals(answer))
			{
				TestScore += 1.0;
			}
			totalTest++;
		}
		
		TestScore = TestScore / totalTest;		
		//CVScore = CVScore / totalLines (132)
		System.out.println("Performance Final: "+TestScore+" %");
	}
}
