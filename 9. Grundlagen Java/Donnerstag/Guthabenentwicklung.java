class Guthabenentwicklung{
    public static void main(String[] args){

        int zeitraumJ =  10;
        float zinsSatzDec = 1.1f;
        float guthaben = 3000; 

        for (int i = 0; i<zeitraumJ; i++){
            guthaben *=  (zinsSatzDec);
            System.out.println(Math.round(guthaben) + " €");

        }
    }
}