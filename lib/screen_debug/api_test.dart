// this screen only for debug after the project is complete delete this file
import 'package:flutter/material.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/networking/networking_api.dart';

class ApiTest extends StatelessWidget {
  const ApiTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ElevatedButton(
              onPressed: () async {
                try {
                  final api = NetworkingApi();
                  const String id = "p-JGqY6xjCAK";
                  ProjectModel x = await api.getProject(id: id);
                  print(x.linksProject?.first.type);
                } catch (e) {}
              },
              child: const Text("This a debug screen"))),
    );
  }
}
