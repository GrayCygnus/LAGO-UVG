package cosmicfilter;

/**
 * cleanCorpus.txt
 * 1324
 * 
 * 1002 HAM - 75.679%
 * 322 SPAM - 24.32%
 * 
 * 1060 TRAIN - 80%
 * 		802 HAM
 * 		258 SPAM
 * 
 * 132 CROSS - 10%
 * 		100 HAM
 * 		32 SPAM
 * 
 * 132 TEST - 10%
 * 		100 HAM
 * 		32 SPAM 		
 * 
 * */

public class Classifier {
	

	public CosmicDictionary dictionary;
	public double K = 1.0;
	
	public Classifier(){}
	
	public Classifier(CosmicDictionary dictionary, double K)
	{
		this.dictionary = dictionary;
		this.K = K;
	}
	
	public String ARG_MAX(String[] message)
	{
		String Y = "";		
		double probSpam = 0.2432;
		double probHam = 0.75679;
		int totalSpam = dictionary.totalSpam;
		int totalHam = dictionary.totalHam;
		int totalWords = dictionary.totalWords;
		
		//1002 HAM - 75.679%
		//322 SPAM - 24.32%
		
		for(String word : message)
		{
			//SPAM
			double countX = 0.0;
			if(dictionary.SPAM.containsKey(word.toUpperCase()))
			{
				countX = dictionary.SPAM.get(word.toUpperCase());
			}			 
			
			double theta = (countX + K)/(totalSpam + K*totalWords); //LAPLACE SMOOTH
			
			probSpam = probSpam * theta; //Multiplicatoria
		}
		
		for(String word : message)
		{
			//HAM
			double countX = 0.0;
			if(dictionary.HAM.containsKey(word.toUpperCase()))
			{
				countX = dictionary.HAM.get(word.toUpperCase());
			}			 
			
			double theta = (countX + K)/(totalHam + K*totalWords); //LAPLACE SMOOTH
			
			probHam = probHam * theta; //Multiplicatoria
		}
		
		if(probHam >= probSpam)
		{
			Y = "ham";
		}
		else
		{
			Y = "spam";
		}
		
		return Y;		
	}
}
