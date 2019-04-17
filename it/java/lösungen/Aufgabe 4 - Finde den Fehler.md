# "Finde die Fehler" 📍 Lösung

Hier sind die Fehler: (siehe Code Kommentare)

```java
/*
	Generate Pyramid For a Given Number Example
	This Java example shows how to generate a pyramid of numbers for given
	number using for loop example.
*/
 
import java.io.BufferedReader;
import java.io.InputStreamReader;
 
public class GeneratePyramidExample {
	
	public static void main (String[] args) throws Exception{
		
		BufferedReader keyboard = new BufferedReader (new InputStreamReader (System.in));
		
		System.out.println("Enter Number:");
		int as = Integer.parseInt (kejboard.readLine()); // Tippfehler "j"
		System.out.println("Enter X:");
		int x = Integer.parseInt (keyboard.readLine());
		 
		
		for(var i=0; i<= as ;i++){ // Datentyp "var" existiert in Java nicht
			
			for(j=1; j <= i){ // Fehlender Datentyp "int" & fehlt "i++"
				System.out.print(y + "t");
				y = y + x;
			}
			
			System.out.print ln(""); // Leerzeichen zuviel
		}
        
		int y = 0; // Deklaration muss an den Anfang
        
	}
}
```

Korrigierter Code:

```java
/*
	Generate Pyramid For a Given Number Example
	This Java example shows how to generate a pyramid of numbers for given
	number using for loop example.
*/
 
import java.io.BufferedReader;
import java.io.InputStreamReader;
 
public class GeneratePyramidExample {
	
	public static void main (String[] args) throws Exception{
		
		BufferedReader keyboard = new BufferedReader (new InputStreamReader (System.in));
		
		System.out.println("Enter Number:");
		int as = Integer.parseInt (keyboard.readLine());
		System.out.println("Enter X:");
		int x = Integer.parseInt (keyboard.readLine());
		 
		int y = 0;
		
		for(int i=0; i <= as ;i++){
			
			for(int j=1; j <= i ; j++){
				System.out.print(y + "t");
				y = y + x;
			}
			
			System.out.println("");
		}
	}
}
```

