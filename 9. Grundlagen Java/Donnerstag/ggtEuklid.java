class ggtEuklid{
    public static void main(String[] args){
        int m,n,r;
        m = 10;
        n = 30;

       
        r = m%n;
       
        while (r>0){
            m = n;
            n = r;
            r = m%n;
            
        }

       
        System.out.println(n);


    }




}