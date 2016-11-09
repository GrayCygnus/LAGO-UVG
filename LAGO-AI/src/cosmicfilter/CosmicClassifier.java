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
		double probEM = 0.05190;
		double probMUON = 0.16486;
		double probRAIN = 0.75927;
		double probVMUON = 0.02396;
		
		int totalEM = dictionary.totalEM;
		int totalMUON = dictionary.totalMUON;
		int totalRAINS = dictionary.totalRAINS;
		int totalVMUON = dictionary.totalVMUON;
		
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
		
		i=0;
		for(String word : message)
		{
			//Muon
			double countX = 0.0;
			if(dictionary.VMUON.containsKey(i+"-"+word))
			{
				countX = dictionary.VMUON.get(i+"-"+word);
			}			 
			
			double theta = (countX + K)/(totalVMUON + K*totalEVENTS); //LAPLACE SMOOTH
			
			probVMUON = probVMUON * theta; //Multiplicatoria
			i++;
		}
		
		
		if(probEM > probMUON && probEM > probRAIN && probEM > probVMUON)
		{
			Y = "EM";
		}
		else if(probMUON > probEM && probMUON > probRAIN && probMUON > probVMUON)
		{
			Y = "Muon";
		}
		else if(probVMUON > probEM && probVMUON > probRAIN && probVMUON > probMUON)
		{
			Y = "MuonVertical";
		}
		else
		{
			Y = "Lluvias";
		}
		
		return Y;		
	}
}
