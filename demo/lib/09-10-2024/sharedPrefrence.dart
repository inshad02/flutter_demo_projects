import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ColorSelect());
}

class ColorSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Selector',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ColorSelectorScreen(),
    );
  }
}

class ColorSelectorScreen extends StatefulWidget {
  @override
  _ColorSelectorScreenState createState() => _ColorSelectorScreenState();
}

class _ColorSelectorScreenState extends State<ColorSelectorScreen> {
  String? _selectedColor;
  final List<String> _colors = ['Red', 'Green', 'Blue', 'Yellow'];

  @override
  void initState() {
    super.initState();
    _loadSelectedColor();
  }

  Future<void> _loadSelectedColor() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedColor = prefs.getString('selectedColor') ?? _colors[0];
    });
  }

  Future<void> _saveSelectedColor(String color) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedColor', color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color Selector')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: _selectedColor,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedColor = newValue!;
                });
              },
              items: _colors.map<DropdownMenuItem<String>>((String color) {
                return DropdownMenuItem<String>(
                  value: color,
                  child: Text(color),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_selectedColor != null) {
                  _saveSelectedColor(_selectedColor!);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Color saved: $_selectedColor')),
                  );
                }
              },
              child: Text('Save Color'),
            ),
            SizedBox(height: 20),
            Text(
              'Selected Color: $_selectedColor',
              style: TextStyle(fontSize: 20, color: _getColor(_selectedColor)),
            ),
          ],
        ),
      ),
    );
  }

  Color _getColor(String? color) {
    switch (color) {
      case 'Red':
        return Colors.red;
      case 'Green':
        return Colors.green;
      case 'Blue':
        return Colors.blue;
      case 'Yellow':
        return Colors.yellow;
      default:
        return Colors.black;
    }
  }
}
