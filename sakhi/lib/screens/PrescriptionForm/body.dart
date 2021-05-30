import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late String _temp;
  late String _blood;
  late String _bp;
  late String _sugar;
  late String _disability;
  late String _pulse;
  late String _hbcounts;
  late String _oxygen;
  late String _weight;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildTp() {
    return TextFormField(
      enabled: false,
      enableInteractiveSelection: false, // will disable paste operation
      focusNode: new AlwaysDisabledFocusNode(),
      decoration: InputDecoration(labelText: 'Body Temperature'),
      keyboardType: TextInputType.number,
      validator: (value) {
        int? temperature = int.tryParse(value!);

        if (temperature == null || temperature <= 90) {
          return 'Temperature in Fahrenheit';
        }

        return null;
      },
      onSaved: (value) {
        _temp = value!;
      },
    );
  }

  Widget _buildBg() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Blood Group'),
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Blood group is Required';
        }

        return null;
      },
      onSaved: (value) {
        _blood = value!;
      },
    );
  }

  Widget _buildBp() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Blood Pressure'),
      keyboardType: TextInputType.number,
      validator: (value) {
        int? blood = int.tryParse(value!);

        if (blood == null || blood <= 0) {
          return 'Enter the Blood Pressure';
        }

        return null;
      },
      onSaved: (value) {
        _bp = value!;
      },
    );
  }

  Widget _buildSugar() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Sugar'),
      keyboardType: TextInputType.number,
      validator: (value) {
        int? calories = int.tryParse(value!);

        if (calories == null || calories <= 0) {
          return 'Enter the Sugar';
        }

        return null;
      },
      onSaved: (value) {
        _sugar = value!;
      },
    );
  }

  Widget _buildDisability() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Disability'),
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ' Required';
        }

        return null;
      },
      onSaved: (value) {
        _disability = value!;
      },
    );
  }

  Widget _buildPulse() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Pulse'),
      keyboardType: TextInputType.number,
      validator: (value) {
        int? pulse = int.tryParse(value!);

        if (pulse == null || pulse <= 0) {
          return 'Enter the pulse';
        }

        return null;
      },
      onSaved: (value) {
        _pulse = value!;
      },
    );
  }

  Widget _buildHbcounts() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'HB Counts'),
      keyboardType: TextInputType.number,
      validator: (value) {
        int? hb = int.tryParse(value!);

        if (hb == null || hb <= 0) {
          return 'Calories must be greater than 0';
        }

        return null;
      },
      onSaved: (value) {
        _hbcounts = value!;
      },
    );
  }

  Widget _buildOxygen() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Oxygen'),
      keyboardType: TextInputType.number,
      validator: (value) {
        int? oxygen = int.tryParse(value!);

        if (oxygen == null || oxygen <= 0) {
          return 'Enter the oxygen level';
        }

        return null;
      },
      onSaved: (value) {
        _oxygen = value!;
      },
    );
  }

  Widget _buildWeight() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Weight'),
      keyboardType: TextInputType.number,
      validator: (value) {
        // ignore: unused_local_variable
        int? weight = int.tryParse(value!);

        if (weight == null || weight <= 0) {
          return 'Weight must be greater than 0';
        }

        return null;
      },
      onSaved: (value) {
        _weight = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(color: Colors.black, fontSize: 18));
    return Scaffold(
        appBar: AppBar(
            title: Text('Health Details'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context); //Fix this action!!!!!!!!!!!
              },
            )),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildTp(),
                _buildBg(),
                _buildBp(),
                _buildDisability(),
                _buildHbcounts(),
                _buildOxygen(),
                _buildPulse(),
                _buildSugar(),
                _buildWeight(),
                SizedBox(height: 20),
                ElevatedButton(
                  style: style,
                  child: Text('Submit Health Details'),
                  onPressed: () => {}, //details added through firebase here
                )
              ],
            ),
          ),
        )));
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
