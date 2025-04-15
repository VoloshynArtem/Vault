package uebung006;

public class NotEnoughMoneyException extends Exception {
	
	private static final long serialVersionUID = 1L;

	public NotEnoughMoneyException() {
		super("Nicht genug Geld auf dem Konto!");
	}
	
	public NotEnoughMoneyException(String message) {
		super(message);
	}
	
	public NotEnoughMoneyException(String message, Throwable cause) {
		super(message, cause);
	}
	
	public NotEnoughMoneyException(Throwable cause) {
		super(cause);
	}

	
	
}
