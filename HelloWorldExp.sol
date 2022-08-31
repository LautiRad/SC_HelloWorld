// SPDX-License-Identifier: MIT 
pragma solidity 0.8.0;

contract HolaMundo {
  string private usuario;

  function agregarMiNombre(string memory _usuario) public {
    usuario = _usuario;
  }

  function saludar() public view returns(string memory) {
    string memory saludo1 = "Hola Mundo! y tambien hola ";
    string memory saludo2 = "! que tengas un lindo dia! :D ";
    string memory saludoCompleto = string(abi.encodePacked(saludo1, usuario, saludo2));

    return saludoCompleto;
  }
}

/* CONTRATO COMENTADO Y EXPLICADO

// SPDX-License-Identifier: MIT                     En la primer linea va la licencia puede ser MIT, GPL-3.0 etc.
pragma solidity 0.8.0;                              Acá va la Versión que vamos a Utilizar, en nuestro caso 0.8.0 porque nuesto contrato va a funcionar hasta hasta la version 0.8.12, despues cambiaria en la funcion por concat **.

contract HolaMundo {
  string private usuario;                           Variable de tipo string, uso la palabra reservada private para darle una propiedad privada en su modificador de acceso, es decir nuestra variable quedará oculta y no cualquiera podrá acceder a ella por fuera de la blockchain.

  function agregarMiNombre(string memory _usuario) public {                 Función que le asigna un valor a nuestra variable usuario. tiene un argumento string y otro memory para indicarle a la EVM que vamos a trabajar sobre la memoria sin tener persistencia.
    usuario = _usuario;                                                         nuestra funcion tiene un indicador de acceso public para poder llamar nuestra funcion desde afuera.
  }

  function saludar() public view returns(string memory) {                   funcion publica tambien, que almacena strings y crea nuestro mensaje.
    string memory saludo1 = "Hola Mundo! y tambien hola ";                  variable string 1 para citar antes del nombre de usuario.
    string memory saludo2 = "! que tengas un lindo dia! :D ";               variable string 2 para citar despues del nombre de usuario.
    string memory saludoCompleto = string(abi.encodePacked(saludo1, usuario, saludo2));     variable  de concatenación de strings con el saludo completo. **string.concat(saludo1, usuario, saludo2);

    return saludoCompleto;
  }
}

*/