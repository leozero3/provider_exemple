import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_exemple/change_notifier/provider_controller.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({Key? key}) : super(key: key);

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 1));
      context.read<ProviderController>().alterarDados();
    });
  }

  @override
  Widget build(BuildContext context) {
    //var controller = Provider.of<ProviderController>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Change Notifier')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ProviderController>(
                builder: (_, controller, __) {
                  return CircleAvatar(
                    backgroundImage: NetworkImage(controller.imgAvatar),
                    radius: 60,
                  );
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<ProviderController>(
                    builder: (_, controller, __) {
                      return Text(controller.name);
                    },
                  ),
                  const SizedBox(width: 20),
                  Consumer<ProviderController>(
                    builder: (_, controller, __) {
                      return Text(controller.birthDate);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
