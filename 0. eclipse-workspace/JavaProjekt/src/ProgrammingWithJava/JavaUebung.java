package ProgrammingWithJava;

import java.util.Random;

public class JavaUebung {

	
	
	
	
	public static  void diceGame(Random random) {
		

		// Simulate dice rolls for two players
		int player1Roll = random.nextInt(6) + 1; // Dice roll between 1 and 6
		int player2Roll = random.nextInt(6) + 1;

		
		// Display the results
		System.out.println("\n");
		System.out.println("Player 1 rolled: " + player1Roll);
		System.out.println("Player 2 rolled: " + player2Roll);

		// Determine the winner
		if (player1Roll > player2Roll) {
			System.out.println("Player 1 wins!");
		} else if (player2Roll > player1Roll) {
			System.out.println("Player 2 wins!");
		} else {
			System.out.println("It's a tie!");
		}
	}
	
	public static void ThreadSleep(int milliseconds) {
		try {
			Thread.sleep(milliseconds);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	
	
	public static void main(String[] args) {
		Random random = new Random();
		while (true) {
			ThreadSleep(1000);
			diceGame(random);
		}
		
		
		
    }
}
