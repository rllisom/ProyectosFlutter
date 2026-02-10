import 'package:flutter/material.dart';

class FormCustomWidget extends StatefulWidget {
  const FormCustomWidget({super.key});

  @override
  State<FormCustomWidget> createState() => _FormCustomWidgetState();
}

class _FormCustomWidgetState extends State<FormCustomWidget> {
  final _formKey = GlobalKey<FormState>();
  String nombre = '', apellido = '', email = '', password = '', repeatPassword = '';
  String sexo = '';

  bool comprobarPassword() {
    return password == repeatPassword;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Nombre", style: TextStyle(color: Colors.white)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
                onChanged: (value) {
                  nombre = value;
                },
                validator: (context) {
                  if (context == null || context.isEmpty || context.length < 3) {
                    return 'Escriba su nombre';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Apellido", style: TextStyle(color: Colors.white)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
                onChanged: (value) {
                  apellido = value;
                },
                validator: (context) {
                  if (context == null || context.isEmpty || context.length < 3) {
                    return 'Escriba su apellido';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  label: Text("Sexo", style: TextStyle(color: Colors.white)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
                items: const [
                  DropdownMenuItem(value: "H", child: Text("Hombre")),
                  DropdownMenuItem(value: "M", child: Text("Mujer")),
                ],
                onChanged: (value) {
                  setState(() {
                    sexo = value!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Selecciona una opción';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Email", style: TextStyle(color: Colors.white)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                validator: (context) {
                  if (context == null || context.isEmpty) {
                    return 'Escriba un email correcto';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Password", style: TextStyle(color: Colors.white)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                validator: (context) {
                  if (context == null || context.isEmpty || context.length < 3) {
                    return 'Escriba una contraseña, mínimo 3 caracteres';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Repite la contraseña", style: TextStyle(color: Colors.white)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                ),
                obscureText: true,
                onChanged: (value) {
                  repeatPassword = value;
                },
                validator: (context) {
                  if (context == null || context.isEmpty || context.length < 3) {
                    return 'Escriba una contraseña, mínimo 3 caracteres';
                  }
                  if (!comprobarPassword()) {
                    return 'Las contraseñas no coinciden';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Buscar el Scaffold en el contexto raíz
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Formulario enviado correctamente"),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.green,
                      )
                    );
                    
                    // Mostrar un diálogo alternativo
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Éxito"),
                        content: Text("Formulario enviado:\nNombre: $nombre\nApellido: $apellido\nEmail: $email"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("OK"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
            ),
          ],
        )
      ),
    );
  }
}