package cosmicfilter;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;

public class BestClassifier {
	
	public static void main(String[] args)
	{
		//Iterar incrementando  K en +-0.01 en el rango de K's deseado
		//encontrar K con mejor performace en cross Validation
		//retornar la K que maximiza el performance
		double K = 0.0;
		double bestK = 0.0;
		double maxK = 10.0;
		double bestScore = 0.0;
		CosmicDictionary dictionary = new CosmicDictionary("C:\\Users\\Anai\\workspace\\Inteligencia Artificial\\src\\sms\\trainCorpus.txt");
		
		//Corpus de Cross Validation
		List<String> CVLines = null;
		try {
			CVLines = Files.readAllLines(Paths.get("C:\\Users\\Anai\\workspace\\Inteligencia Artificial\\src\\sms\\CVCorpus.txt"), Charset.forName("ISO-8859-1")); //cv.txt			
			System.out.println("CV OK");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//Corpust de TEST FINAL
		List<String> TestLines = null;
		try {
			TestLines = Files.readAllLines(Paths.get("C:\\Users\\Anai\\workspace\\Inteligencia Artificial\\src\\sms\\TESTCORPUS.txt"), Charset.forName("ISO-8859-1")); //cv.txt			
			System.out.println("CV OK");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//Maximizar eficiencia de K
		while(K <= maxK)
		{
			Classifier c = new Classifier(dictionary, K);
			double score = crossValidate(CVLines, c);
			if(score > bestScore)
			{
				bestScore = score;
				bestK = K;
			}
			//System.out.println("K: "+K+", "+score+" %");
			System.out.println(K+" , "+score);
			
			K = K + 0.01;
		}
		
		System.out.println("La K que maximiza el CV es: "+bestK+" con puntaje: "+bestScore);
		
		//Probar con TEST
		Classifier bestClassifier = new Classifier(dictionary, bestK);
		FINAL_TEST(TestLines, bestClassifier);
		
	}
	
	public static double crossValidate(List<String> CVLines, Classifier c)
	{
		double CVScore = 0.0;
		for(String line : CVLines)
		{
			String[] lineSplit = line.split("\\s+");
			String[] message = Arrays.copyOfRange(lineSplit, 1, lineSplit.length);
			String answer = lineSplit[0];
			
			String Y = c.ARG_MAX(message);
			if(Y.equals(answer))
			{
				CVScore += 1.0;
			}
		}
		
		CVScore = CVScore / CVLines.size();		
		//CVScore = CVScore / totalLines (132)
		return CVScore;
	}
	
	public static void FINAL_TEST(List<String> test, Classifier c)
	{
		double TestScore = 0.0;
		for(String line : test)
		{
			String[] lineSplit = line.split("\\s+");
			String[] message = Arrays.copyOfRange(lineSplit, 1, lineSplit.length);
			String answer = lineSplit[0];
			
			String Y = c.ARG_MAX(message);
			if(Y.equals(answer))
			{
				TestScore += 1.0;
			}
		}
		
		TestScore = TestScore / test.size();		
		//CVScore = CVScore / totalLines (132)
		System.out.println("Performance Final: "+TestScore+" %");
	}
}
