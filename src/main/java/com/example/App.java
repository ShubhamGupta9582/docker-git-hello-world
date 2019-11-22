package com.example;


public class App {
    public static void main( String[] args ) throws Exception {
        for (int i=0; i<100; i++) {
            System.out.println( "Hi Ping " + i);
            Thread.sleep(1000);
        }
    }
}
