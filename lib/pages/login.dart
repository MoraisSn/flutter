import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40
        ),
        
        color: Colors.white,
        
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 170,
              height: 170,
              child: Image.asset('assets/melody.png'),
            ),
           
            const SizedBox(height: 20),

            TextField(
            cursorColor:  Colors.red[200],
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            
            // config das coisas dentro da caixa de texto
            decoration:  InputDecoration(
             
              // borda só, n sei ainda kkk
              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              
              // borda quando está sem foco
              disabledBorder: UnderlineInputBorder(
                borderRadius:const BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.red.shade200),
              ),
              
              // borda quando está com foco
              focusedBorder: OutlineInputBorder(
                borderRadius:const BorderRadius.all(Radius.circular(20)) ,
              borderSide: BorderSide(color: Colors.red.shade200)
              ),
              
              // cor da label q fica em cima da caixa
              labelText: 'Email',
              labelStyle: const TextStyle(
                color:  Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              
            ),
            // cor dentro da caixa de texto
            style: const TextStyle(fontSize: 20),
           ),

          const SizedBox(height: 15),
          
          TextField(
            cursorColor:  Colors.red[200],
            keyboardType: TextInputType.text,
            obscureText: true,
            
            // config das coisas dentro da caixa de texto
            decoration:  InputDecoration(
             
              // borda só, n sei ainda kkk
              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              
              // borda quando está sem foco
              disabledBorder: UnderlineInputBorder(
                borderRadius:const BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.red.shade200)
              ),
              
              // borda quando está com foco
              focusedBorder: OutlineInputBorder(
                borderRadius:const BorderRadius.all(Radius.circular(20)) ,
                borderSide: BorderSide(color: Colors.red.shade200)
              ),
              
              // cor da label q fica em cima da caixa
              labelText: 'Senha',
              labelStyle: const TextStyle(
                color:  Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
              
            ),
            // cor dentro da caixa de texto
            style: const TextStyle(fontSize: 20),
           ),

           Container(
            height: 40,
            alignment: Alignment.centerRight,
            
            child: TextButton(
              style: const ButtonStyle(
                // cor quando vc clica no botão
                overlayColor: MaterialStatePropertyAll(Colors.white)
              ),   
              
              child :const Text(
                'Recuperar Senha',
                style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
              ),
           ),

           const SizedBox(height: 40),
          
           Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0.3, 1],
                colors:[
                  Colors.red.shade100,
                  Colors.red.shade200
                ],
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))
            ),
            child: SizedBox.expand(
              child: TextButton(
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text('Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                   ),
                   
                    Container(
                      child:  SizedBox(
                        height: 33,
                        width:  33,
                        child: Image.asset('assets/laco.png'),
                      ),
                    )
                  ],
              ) ,
              onPressed: () {},),
            ),
           )

          
          ],
        ),
      ),
    );
  }
}