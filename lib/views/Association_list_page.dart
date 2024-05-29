import 'package:flutter/material.dart';
import '../models/entities.dart';
import '../widget/association.card.dart';

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
      body: _buildAssociationList(),
    );
  }

  Widget _buildAssociationList() {
    return associations.isEmpty
        ? Center(
      child: Text('No associations available.'),
    )
        : ListView.builder(
      itemCount: associations.length,
      itemBuilder: (context, index) {
        return AssociationCard(association: associations[index]);
      },
    );
  }
}
