import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logistics_express/src/custom_widgets/form_text_field.dart';
import 'package:logistics_express/src/custom_widgets/take_image.dart';
import 'package:logistics_express/src/features/screens/delivery_agent/agent_auth/profile_info.dart';

class VehicleRc extends StatelessWidget {
  const VehicleRc({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: AppBar(
          title: const Text('Vehicle RC'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TakeImage(text: 'Upload Front-side'),
              const SizedBox(height: 14),
              const TakeImage(text: 'Upload Back-side'),
              const SizedBox(height: 25),
              FormTextField(
                label: 'Enter vehicle no.',
                hintText: 'Enter here',
                keyboardType: TextInputType.number,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.circleExclamation),
                ),
              ),
              const SizedBox(height: 25),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => ProfileInfo(),
                      ),
                    );
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
