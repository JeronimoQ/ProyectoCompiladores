package com.proyectoCompiladores.controller;

import com.proyectoCompiladores.AnalizadorLexicoProyecto;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.ServletOutputStream;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

@Controller
public class controller {

    @GetMapping("/")
    public String inicioSesion() {
        return "index";
    }


    @PostMapping("/analizar")
    public String analizarArchivo(@RequestParam("archivo") MultipartFile archivo, Model model) throws IOException {
        // Lógica para realizar el análisis léxico, sintáctico y semántico del archivo


        Scanner sc = new Scanner(archivo.getInputStream());

        //System.out.println("fuera del while " + sc.nextLine());
        List<String> resultado = new ArrayList<>();
        while (sc.hasNextLine()) {
            String linea = sc.nextLine();
            resultado.add(linea);
            //System.out.println(linea);
            //System.out.println(sc.nextLine());
        }
        for (String res : resultado) {
            Reader stringReader = new StringReader(res);
            AnalizadorLexicoProyecto scan = new AnalizadorLexicoProyecto(stringReader);
            System.out.println(scan.yytext() + scan.yylex());
            //System.out.println(res);
            model.addAttribute("resultadoLexico", scan.yytext());
        }
        Reader stringReader = new StringReader(resultado.toString());
        AnalizadorLexicoProyecto scan = new AnalizadorLexicoProyecto(stringReader);
        //System.out.println(scan.yytext());
        //System.out.println(resultado.toString());


        sc.close();


        /*byte[] contenido = archivo.getBytes();
        BufferedReader reader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(contenido)));
        AnalizadorLexicoProyecto scanner = new AnalizadorLexicoProyecto(reader);*/
        /*InputStream inputStream = archivo.getInputStream();
        Reader reader = new InputStreamReader(inputStream);
        AnalizadorLexicoProyecto scanner = new AnalizadorLexicoProyecto(reader);*/
        //List<String> resultado = new ArrayList<>();

        // Iterar sobre los tokens identificados por el analizador léxico


        // Iterar sobre los tokens identificados por el analizador léxico


        //InputStream inputStream = archivo.getInputStream();
        //String contenido = convertInputStreamToString(inputStream);
        //Reader cont = new BufferedReader((Reader) archivo);
        //Reader reader = new InputStreamReader(archivo.getInputStream());
        //AnalizadorLexicoProyecto scanner = new AnalizadorLexicoProyecto(reader);
        // Obtener el resultado del análisis
        //String resultadoLexico = String.valueOf(scanner.yylex());; // Resultado del análisis léxico
        //String resultadoSintactico = "..."; // Resultado del análisis sintáctico
        //String resultadoSemantico = "..."; // Resultado del análisis semántico
        // Agregar los resultados al modelo
        //model.addAttribute("resultadoLexico", resultado);
        //model.addAttribute("resultadoSintactico", resultadoSintactico);
        //model.addAttribute("resultadoSemantico", resultadoSemantico);

        // Devolver el nombre de la vista a mostrar
        return "index";
    }

    private String convertInputStreamToString(InputStream inputStream) {
        Scanner scanner = new Scanner(inputStream).useDelimiter("\\A");
        return scanner.hasNext() ? scanner.next() : "";
    }
}
