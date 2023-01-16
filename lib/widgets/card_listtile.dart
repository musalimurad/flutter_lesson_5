import 'package:f_four/model/person.dart';
import 'package:flutter/material.dart';

class CardListTile extends StatelessWidget {
  CardListTile({super.key});
  List<Person> persons = List.generate(
      50, (index) => Person(index, "name-${index}", "work-${index}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: Text("Card List Tile exam"),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color:
                index % 2 == 0 ? Colors.cyan : Color.fromARGB(255, 53, 94, 127),
            elevation: 34.0,
            // shadowColor: Colors.blue,
            surfaceTintColor: Colors.purple,
            borderOnForeground: true,
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              title: Text(persons[index].name),
              subtitle: Text(persons[index].work),
              iconColor: Colors.white,
              textColor: Colors.white,
              trailing: Icon(Icons.delete),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(persons[index].id.toString()),
              ),
            ),
          );
        },
        itemCount: persons.length,
        separatorBuilder: (context, index) {
          var newIndex = index + 1;
          if (newIndex % 4 == 0) {
            return ElevatedButton(onPressed: () {}, child: Text("onclick"));
          }
          return SizedBox();
        },
      ),
    );
  }

  ListView test() {
    return ListView(
        children: persons
            .map(
              (e) => Card(
                child: ListTile(
                  tileColor: Colors.red,
                  trailing: Icon(Icons.delete),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text((e.id + 1).toString()),
                  ),
                  title: Text(e.name),
                  subtitle: Text(e.work),
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
              ),
            )
            .toList());
  }

  SingleChildScrollView simpleChildScrollViewExam() {
    return SingleChildScrollView(
      child: Column(
        children: [
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
          simpleCardExam(),
        ],
      ),
    );
  }

  Column simpleCardExam() {
    return Column(
      children: [
        Card(
          color: Colors.red,
          elevation: 34.0,
          // shadowColor: Colors.blue,
          surfaceTintColor: Colors.purple,
          borderOnForeground: true,
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Text("Murad Musali"),
            subtitle: Text("Developer"),
            iconColor: Colors.white,
            textColor: Colors.white,
            trailing: Icon(Icons.delete),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("M"),
            ),
          ),
        ),
        Divider(
          color: Colors.purple.shade400,
          height: 10.0,
          thickness: 3.0,
          indent: 20.0,
          endIndent: 20.0,
        )
      ],
    );
  }
}
