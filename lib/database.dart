import 'package:sqflite/sqflite.dart';

class DB {
  static late Database database;

  static Future<Database> createdb() async {
    return database = await openDatabase(
      'company.db',
      version: 1,
      onCreate: (database, version) {
        print('Database created ');
        database
            .execute(
                'CREATE TABLE register( Id INTEGER PRIMARY KEY, Company_Name TEXT,Contact_Person_Name TEXT,'
                'Company_Industry TEXT ,Contact_Person_Phone INTEGER , Email TEXT , Company_Address TEXT ,'
                ' Company_Location_Long REAL, Company_Location_Lat REAL,Company_Size TEXT ,Password TEXT)')
            .then((value) => print(' table is created'));
      },
      onOpen: (database) {
        print('database opened ');
      },
    );
  }

  static Future instertdb(
      {required String Company_Name,
      required String Contact_Person_Name,
      required String Contact_Person_Phone,
      required String Email,
      required String Company_Address,
      required double Company_Location_Long,
      required double Company_Location_Lat,
      required String password,
      String? compenyInsustry,
      String? companySize}) async {
    return await database.transaction((txn) async {
      txn
          .rawInsert(
              'INSERT INTO register(Company_Name, Contact_Person_Name,Company_Industry, Contact_Person_Phone , Email ,Company_Address ,Company_Location_Long, Company_Location_Lat , Company_Size ,Password) '
              'VALUES("$Company_Name","$Contact_Person_Name", "$compenyInsustry", "$Contact_Person_Phone" ,"$Email" ,"$Company_Address" , "$Company_Location_Long" ,"$Company_Location_Lat" ,"$companySize", "$password")')
          .then((value) => print('$value row inserted'))
          .catchError((error) {
        print('error happend when insert data ');
      });
    });
  }

  static Future<bool> login(
      {required String email, required String password}) async {
    await database.rawQuery(
        'SELECT * FROM register WHERE Email = ?', [email]).then((value) {
      if (value[0]['Password'] == password) {
        return true;
      }
      // ignore: unrelated_type_equality_checks
    });
    return false;
  }

/*  Future instertdbtemp
      (
      String? compenyInsustry , String? companySize ,
      {required String Company_Name , required String Contact_Person_Name, required int Contact_Person_Phone,required String Email,
        required String Company_Address ,required double Company_Location_Long ,
        required double Company_Location_Lat , required String password })
  async{
    return await database.transaction((txn) async {
      txn
          .rawInsert(
          'INSERT INTO tasks (Company_Name,Contact_Person_Name,Company_Industry,Contact_Person_Phone , Email ,Company_Address ,'
              'Company_Location_Long,Company_Location_Lat ,, Password) '
              'VALUES($Company_Name,$Contact_Person_Name, $compenyInsustry, $Contact_Person_Phone ,$Email '
              ',$Company_Address , $Company_Location_Long ,$Company_Location_Lat ,$companySize, $password)')
          .then((value) => print('$value row inserted'))
          .catchError((error) {
        print('error happend when insert data ');
      });
    });}*/
}
