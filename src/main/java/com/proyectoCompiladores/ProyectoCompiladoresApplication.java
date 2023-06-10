package com.proyectoCompiladores;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import java.io.*;

@SpringBootApplication
public class ProyectoCompiladoresApplication {

    public static void main(String[] args) throws IOException {

        SpringApplication.run(ProyectoCompiladoresApplication.class, args);

        /*Reader r = new FileReader("prueba.txt");
        AnalizadorLexicoProyecto scanner = new AnalizadorLexicoProyecto(r);
        scanner.yytext();*/

		/*try {
			File file = new File("prueba.txt");
			Scanner scannerfile = new Scanner(file);

			while (scannerfile.hasNextLine()) {
				String line = scannerfile.nextLine();
				//AnalizadorLexicoProyecto scanner = new AnalizadorLexicoProyecto(line);
				//scanner.yylex();
				//System.out.println(line);
			}


			scannerfile.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}*/


        Reader r2 = new FileReader("/Users/JSIMP/Desktop/prueba.txt");
        AnalizadorLexicoProyecto lex = new AnalizadorLexicoProyecto(r2);
        parser p = new parser(lex);
        try {
            p.parse();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

}
