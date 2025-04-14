package kapitel5;

public class Buch {
	private String name;
	private String auth;
	private String pubDate;
	
	
	public Buch(String n, String a, String p) {
		name = n;
		auth = a;
		pubDate = p;
				
	}


//getter:
	public String getName() {
		return name;
	}
	
	public String getAuth() {
		return auth;
	}
	
	public String getPubDate() {
		return pubDate;
	}
	




}
