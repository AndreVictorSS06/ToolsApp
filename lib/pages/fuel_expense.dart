import 'package:flutter/material.dart';

class fuelExpense extends StatefulWidget {
  const fuelExpense({super.key});

  @override
  State<fuelExpense> createState() => _fuelExpenseState();
}

class _fuelExpenseState extends State<fuelExpense> {
  final nameController = TextEditingController();
  final destinoController = TextEditingController();
  final distanciaController = TextEditingController();
  final litroController = TextEditingController();

  final _fuelkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Fuel Expense'),
          ),
          actions: [
            IconButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Calculate travel fuel'),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: const Icon(Icons.info_outline),
            )
          ],
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 75),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                      'Fuel App',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        // fontStyle: FontStyle.italic,
                        letterSpacing: 10,
                        // backgroundColor: Colors.amber,
                      ),
                    ),
              Form(
                key: _fuelkey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.account_circle,
                            color: Colors.deepPurple,
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Digite seu nome',
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      controller: destinoController,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.location_city,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Destino',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      controller: distanciaController,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.route_outlined,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Distancia',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      controller: litroController,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.attach_money_outlined,
                          color: Colors.deepPurple,
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Valor do litro:',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            //final name = nameController.text;
                            final destino = destinoController.text;
                            final distancia = double.parse(distanciaController.text);
                            final distanciaTotal = (distancia * 2);
                            final valorLitro = double.parse(litroController.text);
                            final qtdLitros = (distanciaTotal / 12);
                            final valorGasto = (valorLitro * qtdLitros);

                            return AlertDialog(
                              title: Text(
                                  'Valor total da viagem para $destino gasto é ${valorGasto.toStringAsFixed(2)} reais'),
                            );
                          },
                        );
                      },
                      child: const Text('Calcular'),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}