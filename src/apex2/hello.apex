public class hello {
    public static void main(String[] args) {
        system.debug("Hello, World!");
        system.debug("Fibonnaci(12): " + fibonnaci(12));
        system.debug("Fibonnaci(12): " + fibonnaci2(12));
        system.debug("Fibonnaci(12): " + fibonnaci(12));
        system.debug("Fibonnaci(12): " + fibonnaci2(12));
        system.debug("Fibonnaci(12): " + fibonnaci(12));
        system.debug("Fibonnaci(12): " + fibonnaci2(12));
        system.debug("Fibonnaci(12): " + fibonnaci(12));
        system.debug("Fibonnaci(12): " + fibonnaci2(12));
        system.debug("Fibonnaci(12): " + fibonnaci(12));
        system.debug("Fibonnaci(12): " + fibonnaci2(12));
        system.debug("Fibonnaci(12): " + fibonnaci(12));
        system.debug("Fibonnaci(12): " + fibonnaci2(12));
        system.debug("Fibonnaci(12): " + fibonnaci(12));
        system.debug("Fibonnaci(12): " + fibonnaci2(12));
    }

    public static void fibonnaci(){
        integer n=10, firstterm =0,secondterm =1;
        for(integer i=1;i<=n;i++){
            integer nextterm = firstterm + secondterm;
            firstterm=secondterm;
            secondterm=nextterm;
            system.debug('output' + nextterm);
        } 
    }

    public static void fibonnaci2(){
        integer n=10, firstterm =0,secondterm =1;
        for(integer i=1;i<=n;i++){
            integer nextterm = firstterm + secondterm;
            firstterm=secondterm;
            secondterm=nextterm;
            system.debug('output' + nextterm);
        } 
    }
} 