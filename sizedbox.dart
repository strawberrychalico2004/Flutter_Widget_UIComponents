import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nested Containers'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: SizedBox(
            width: 250.0,
            height: 250.0,
            child: Container(
              // First container (outermost)
              color: Colors.red,
              padding: EdgeInsets.all(20),
              child: Container(
                // Second container
                color: Colors.blue,
                padding: EdgeInsets.all(20),
                child: Container(
                  // Third container
                  color: Colors.green,
                  padding: EdgeInsets.all(20),
                  child: Container(
                    // Fourth container (innermost)
                    color: Colors.orange,
                    child: Center(
                      child: Text(
                        'Nested!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}