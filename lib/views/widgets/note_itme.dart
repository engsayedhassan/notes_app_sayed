import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFCD7A),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter tips",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "Poppins",
                color: Colors.black.withOpacity(0.9),
              ),
            ),
            trailing: InkWell(
              onTap: () {},
              child: const FaIcon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 20,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "Build your career with sayed hassan",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Poppins",
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
          ),
          Text(
            "May 21,2024",
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Poppins",
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
