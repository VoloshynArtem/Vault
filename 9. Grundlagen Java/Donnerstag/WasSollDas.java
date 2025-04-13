class WasSollDas{

    public static void main (String[]args){

        int m, n;
        m = 12;
        n = 81;

        while (m != n){
            if (m>n){
                m -= n;
            }else{
                n -= m;
            }
            System.out.println(m + " "+ n);


        }



    }


}