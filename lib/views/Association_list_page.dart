import 'package:flutter/material.dart';
import '../models/entities.dart';
import '../widget/association.card.dart';
import '../views/filteredEvents_list.dart';
import '../views/event_list_page.dart';// Import the filtered events page

class AssociationListPage extends StatelessWidget {

  final List<Association> associations;


  const AssociationListPage({Key? key, required this.associations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Associations Count: ${associations.length}"); // Debugging
    return Scaffold(
      appBar: AppBar(
        title: Text('Associations'),
      ),
      body: _buildAssociationList(context), // Pass the context to _buildAssociationList
    );
  }

  Widget _buildAssociationList(BuildContext context) {
    return associations.isEmpty
        ? Center(
      child: Text('No associations available.'),
    )
        : ListView.builder(
      itemCount: associations.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Navigate to the filtered events page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FilteredEventsPage(association: associations[index]),
              ),
            );
          },
          child: AssociationCard(association: associations[index]),
        );
      },
    );
  }
}
