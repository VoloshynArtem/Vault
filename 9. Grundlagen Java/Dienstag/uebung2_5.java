public class uebung2_5 {
	int a = 3;
	int b = 5;
	int c = 6;
	double x = 1.5;
	double y = 2.3;
	int int_ergebnis;
	double double_ergebnis;
	
	
	public uebung2_5(){
		aufgabe1();
		aufgabe2();
		aufgabe3();
		aufgabe4();
		aufgabe5();
		


	}

	public static void main(String[] args) {
		new uebung2_5();
	}


		public void aufgabe1(){
			int_ergebnis = a * b + c;
			System.out.println(int_ergebnis);
			int_ergebnis = c + a * b;
			System.out.println(int_ergebnis);
			int_ergebnis = c - a * 3;
			System.out.println(int_ergebnis);
			int_ergebnis = c / a;
			System.out.println(int_ergebnis);
			int_ergebnis = c / b;
			System.out.println(int_ergebnis);
			int_ergebnis = a + b / c;
			System.out.println(int_ergebnis);
			double_ergebnis = c / b;
			System.out.println(double_ergebnis);
			double_ergebnis = c + a / b;
			System.out.println(double_ergebnis);
			double_ergebnis = x + y * b;
			System.out.println(double_ergebnis);
			double_ergebnis = (x + y) * b;
			System.out.println(double_ergebnis);
			double_ergebnis = y - x * b;
			System.out.println(double_ergebnis);
		}


		public void aufgabe2(){
			System.out.println("b + c * 6 = " + (b + c * 6));
			System.out.println("b - c * 6 = " + (b - c * 6));
			System.out.println("(x * c - a) = " + (x * c - a));
			System.out.println("x + c * 6 = " + (x + c * 6));
			System.out.println("y - c / a = " + (y - c / a));
			System.out.println("b + a * x + y = " + (b + a * x + y));
			System.out.println("b + a * x * y = " + (b + a * x * y));
			System.out.println("b + a * x - y = " + (b + a * x - y));
		}


		public void aufgabe3(){
			System.out.println("a++: " + a++);
			System.out.println("a: " + a);
			System.out.println("++a: " + ++a);
			System.out.println("a: " + a);
			System.out.println("b + a--: " + b + a--);
			System.out.println("a: " + a + " b: " + b);
			System.out.println("b + a--: " + (b + a--));
			System.out.println("a: " + a + " b: " + b);
			System.out.println("b + --a: " + (b + --a));
			System.out.println("a: " + a + " b: " + b);
		}



		public void aufgabe4(){
			System.out.println("c > b = " + (c > b));
			System.out.println("c > b = " + (c > b));
			System.out.println("b < a = " + (b < a));
			System.out.println("c == b = " + (c == b));

			System.out.println("a = b = " + (a = b));
			System.out.println("a = " + a + " b = " + b);
			System.out.println("x > y = " + (x > y));
			y = y + 0.1;
			y = y + 0.1;
			System.out.println("y == 2.5 = " + (y == 2.5));
			System.out.println("y = " + y);
			double z = 1.0;
			z = z + 0.1;
			z = z + 0.1;
			System.out.println("z == 1.2 = " + (z == 1.2));
			System.out.println("z = " + z);
		}


		public void aufgabe5(){
			boolean b_wert;
			b_wert = a == c;
			System.out.println("a == b = " + (a == c));
			System.out.println(b_wert);
			System.out.println(!b_wert);
			b_wert = a == b && c > b;
			System.out.println("a == b && c > b = " + b_wert);
			b_wert = b < c & a++ == 4;
			System.out.println("b < c & a++ == 4 = " + b_wert);
			b_wert = b < c & ++a == 5;
			System.out.println("b < c & ++a == 5 = " + b_wert);
			a = 3;
			b_wert = b < c & ++a == 4;
			System.out.println("b < c & ++a == 4 = " + b_wert);
			a = 3;
			b_wert = a > b && c++ == 6;
			System.out.println("a > b && c++ == 6 = " + b_wert);
			System.out.println("c = " + c);
			// b_wert = !y > x;	//klammer nicht gesetzt und y kein bool				
			// System.out.println("!y > x = " + !y > x); //hier wie in 115
			b_wert = !(y > x);
			System.out.println("!(y > x) = " + !(y > x));
			b_wert = a > b & c++ == 6;
			System.out.println("a > b & c++ == 6 = " + b_wert);
			System.out.println("c = " + c);
			c = 6;
			b_wert = a < b || c++ == 6;
			System.out.println("a < b || c++ == 6 = " + b_wert);
			System.out.println("c = " + c);
			b_wert = a < b | c++ == 6;		
			System.out.println("a < b | c++ == 6 = " + b_wert);
			System.out.println("c = " + c);
			c = 6;
			// b_wert = a > b | c++;	//tf soll das sein 			
			System.out.println("a > b | c++ = " + b_wert);
		}
}

