/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication22;

/**
 *
 * @author alan.ryan
 */
public class JavaApplication22 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        char character = 'a';
        int ascii = (int) character;

        System.out.println(ascii); //prints 97
        
        String name = "alan";
        character = name.charAt(0); // This gives the character 'a'
        ascii = (int) character; 
        System.out.println(ascii); //prints 97
        

        
        
        
    }
    
}
