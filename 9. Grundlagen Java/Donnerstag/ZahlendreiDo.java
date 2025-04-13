class ZahlendreiDo{
    public static void main (String[]args ){
        int i = 0;
        int j = 0;

        do {
            System.out.print("\n");
            
            do {
                System.out.print(i);
                i++;

            }while(i<=j);

            i = 0; 

            j++;

        }while(j<=10);

    }



}