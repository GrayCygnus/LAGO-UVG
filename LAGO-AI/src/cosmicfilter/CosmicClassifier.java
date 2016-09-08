package cosmicfilter;

/**
 *
 *	EM 43.308%
 *	Muon	13.490%
 *	Rains	43.43%		
 * 
 * */

public class CosmicClassifier {
	

	public CosmicLog dictionary;
	public double K = 1.0;
	
	public CosmicClassifier(){}
	
	public void setK(double K)
	{
		this.K = K;
	}
	
	public CosmicClassifier(CosmicLog dictionary, double K)
	{
		this.dictionary = dictionary;
		this.K = K;
	}
	
	public String ARG_MAX(String[] message)
	{
		String Y = "";		
		double probEM = 0.43308;
		double probMUON = 0.1349;
		double probRAIN = 0.4343;
		
		int totalEM = dictionary.totalEM;
		int totalMUON = dictionary.totalMUON;
		int totalRAINS = dictionary.totalRAINS;
		
		int totalEVENTS = dictionary.totalEvents;
		
		int i = 0;
		for(String word : message)
		{
			//EM
			double countX = 0.0;
			if(dictionary.EM.containsKey(i+"-"+word))
			{
				countX = dictionary.EM.get(i+"-"+word);
			}			 
			
			double theta = (countX + K)/(totalEM + K*totalEVENTS); //LAPLACE SMOOTH
			
			probEM = probEM * theta; //Multiplicatoria
			i++;
		}
		
		i=0;
		for(String word : message)
		{
			//Muon
			double countX = 0.0;
			if(dictionary.MUON.containsKey(i+"-"+word))
			{
				countX = dictionary.MUON.get(i+"-"+word);
			}			 
			
			double theta = (countX + K)/(totalMUON + K*totalEVENTS); //LAPLACE SMOOTH
			
			probMUON = probMUON * theta; //Multiplicatoria
			i++;
		}
		
		i=0;
		for(String word : message)
		{
			//Lluvias
			double countX = 0.0;
			if(dictionary.RAINS.containsKey(i+"-"+word))
			{
				countX = dictionary.RAINS.get(i+"-"+word);
			}			 
			
			double theta = (countX + K)/(totalRAINS + K*totalEVENTS); //LAPLACE SMOOTH
			
			probRAIN = probRAIN * theta; //Multiplicatoria
			i++;
		}
		
		if(probEM > probMUON && probEM > probRAIN)
		{
			Y = "EM";
		}
		else if(probMUON > probEM && probMUON > probRAIN)
		{
			Y = "Muon";
		}
		else
		{
			Y = "Lluvias";
		}
		
		return Y;		
	}
}
