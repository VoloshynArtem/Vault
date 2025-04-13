public class Collatzfolge {
    public static void main(String[] args) {
        int x = 19;
        colatz(x);
    }

    public static void colatz(int k){
        System.out.println(k);
        if (k == 1){
            return;

        }
        if (k%2 == 0 ){ 
            colatz(k/2);
    
    
        }else {
            colatz(3 * k + 1);


        }

    }
}