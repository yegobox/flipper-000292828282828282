import 'package:flipper_models/view_models/signup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SignUpFormView extends StatelessWidget {
  SignUpFormView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.reactive(
      onModelReady: (model) {
        model.useStyle = 'Business';
        model.registerLocation();
      },
      viewModelBuilder: () => SignupViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Form(
            key: _formKey,
            child: Column(
              children: [
                Text('Welcome to flipper, please signup.'),
                Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name is required';
                      }
                      return null;
                    },
                  ),
                ),
                Text('How do you want to use flipper?'),
                DropdownButton<String>(
                  value: model.flipperUseStyle,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? style) {
                    model.useStyle = style!;
                  },
                  items: <String>['Business', 'Social']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Processing Data',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        );
                        model.signup();
                      }
                    },
                    child: Text('Register'),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
