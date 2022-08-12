import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:esport/pages/profile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nomorController = new TextEditingController();
  TextEditingController namaController = new TextEditingController();
  TextEditingController typesController = new TextEditingController();
  TextEditingController classController = new TextEditingController();
  TextEditingController resistController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: CloseButton(
          onPressed: () {
            Navigator.pop(context);
            print('back to previous page');
          },
        ),
        title: Text('Tambah Pokemon')
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 64, 
          bottom: 64, 
          left: 24, 
          right: 24
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                controller: nomorController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nomor',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                controller: namaController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nama',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                controller: typesController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'types',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                controller: classController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Classification',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 48,
              child: FlatButton (
                color: Colors.blue,
                child: Text(
                  'Simpan', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14
                    ),
                    ),
                    onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(
                          builder: (context) => profile(nomor: nomorController.text, nama: namaController.text, types: typesController.text , classification: classController.text, resist: resistController.text,
                            ),
                        ),
                        );
                      }
              )
            ),
          ],
        )
      ),
      
    );
  }
}