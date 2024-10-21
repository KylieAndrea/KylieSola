# **para que sirven los codigos de dart**
por cada nuevo conocimiento se estara editando el archivo.

## variables

*numeros enteros*
~~~
int variable = 123;
~~~
*numeros decimales*
~~~
double variable = 4,5;
~~~
*texto*
~~~
string variable = 'texto';
string variable = '"texto en comillas"';
~~~
*se usa para caulquier cosa, ya sea texto o numeros de cualquier tipo*
~~~
dinamic varible = 'texto';
dinamic variable = 185;
~~~

## imprimir

*texto*
~~~
print ('texto');
~~~
*concadenar*
~~~
print ('texto') + variable
~~~
*interpolar*
~~~
print ('texto $variable')
~~~
 ## el usuario responde 

*numeros enteros*
~~~
print ('digite un numero')
int? variable = int.parse(stdin.readLineSync()!)
~~~
*texto*
~~~
print ('escriba su nombre')
string variable = stdin.readLineSync();
~~~

## if else
~~~
if (variable >= 1){

    print 'hello'

}else (varieble < 1){

    print 'word'

}
~~~
