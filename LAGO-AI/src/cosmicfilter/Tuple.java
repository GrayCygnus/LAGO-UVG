package cosmicfilter;

public class Tuple {
	private final Integer x; 
	private final String y; 
	public Tuple(Integer x, String y) { 
		this.x = x;
		this.y = y; 
	}
	public Integer getX()
	{
		return x;
	}
	public String getY()
	{
		return y;
	}
	
	@Override
	public boolean equals(Object o)
	{
		if((o instanceof Tuple) && ((Tuple)o).getX() == this.x && ((Tuple)o).getY() == this.y )
			return true;
		return false;
	}
}
