import 'package:dating_application_screens/dashboard/d_profile/presentation/deactivate_account.dart';
import 'package:dating_application_screens/widget/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSettingPage extends HookWidget {
  const ProfileSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recievepush = useState<bool>(true);
    final pushsound = useState<bool>(true);
    final locationupdates = useState<bool>(true);
    final backgroundlocation = useState<bool>(false);
    final showlocation = useState<bool>(false);
    final likedormessage = useState<bool>(false);
    final hideage = useState<bool>(false);
    final nearby = useState<bool>(false);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Setting",
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              Text(
                'NOTIFICATION',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 18.sp, color: Colors.grey),
              ),
              CustomSwitch(
                defaultValue: recievepush,
                btnText: 'Recieve Push',
                callback: (a) {
                  recievepush.value = !recievepush.value;
                },
                tapFunc: () {
                  recievepush.value = !recievepush.value;
                },
              ),
              const Text(
                'GEO LOCATION',
                style: TextStyle(color: Colors.grey),
              ),
              CustomSwitch(
                defaultValue: pushsound,
                btnText: 'Push sound',
                callback: (a) {
                  pushsound.value = !pushsound.value;
                },
                tapFunc: () {
                  pushsound.value = !pushsound.value;
                },
              ),
              CustomSwitch(
                defaultValue: locationupdates,
                btnText: 'Location updates',
                callback: (a) {
                  locationupdates.value = !locationupdates.value;
                },
                tapFunc: () {
                  locationupdates.value = !locationupdates.value;
                },
              ),
              CustomSwitch(
                defaultValue: backgroundlocation,
                btnText: 'Background location updated',
                callback: (a) {
                  backgroundlocation.value = !backgroundlocation.value;
                },
                tapFunc: () {
                  backgroundlocation.value = !backgroundlocation.value;
                },
              ),
              CustomSwitch(
                defaultValue: showlocation,
                btnText: 'Show my location on map',
                callback: (a) {
                  showlocation.value = !showlocation.value;
                },
                tapFunc: () {
                  showlocation.value = !showlocation.value;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'MESSAGE',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomSwitch(
                defaultValue: likedormessage,
                btnText: 'Only get messages from members you liked or messaged',
                callback: (a) {
                  likedormessage.value = !likedormessage.value;
                },
                tapFunc: () {
                  likedormessage.value = !likedormessage.value;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'AGE',
                style: TextStyle(color: Colors.grey),
              ),
              CustomSwitch(
                defaultValue: hideage,
                btnText: 'Hide age',
                callback: (a) {
                  hideage.value = !hideage.value;
                },
                tapFunc: () {
                  hideage.value = !hideage.value;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'INVISIBLE MODE',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomSwitch(
                defaultValue: nearby,
                btnText:
                    'Do not appear in \'Views\', \'Online\' and \'Nearby\' for other members',
                callback: (a) {
                  nearby.value = !nearby.value;
                },
                tapFunc: () {
                  nearby.value = !nearby.value;
                },
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Number of video call',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Chip(
                  // height: 50.h,
                  // width: 50.w,
                  // decoration: const BoxDecoration(color: Colors.blue),
                  label: Text(
                    '05 min',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color(0xFF59D6D6),
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Sale of Credits for sending gifts',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Chip(
                  // height: 50.h,
                  // width: 50.w,
                  // decoration: const BoxDecoration(color: Colors.blue),
                  label: Text(
                    '05 min',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color(0xFF59D6D6),
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Sales of minutes for video',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Chip(
                  // height: 50.h,
                  // width: 50.w,
                  // decoration: const BoxDecoration(color: Colors.blue),
                  label: Text(
                    '05 min',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color(0xFF59D6D6),
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Sales minutes for voice call',
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Chip(
                  // height: 50.h,
                  // width: 50.w,
                  // decoration: const BoxDecoration(color: Colors.blue),
                  label: Text(
                    '05 min',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Color(0xFF59D6D6),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Deactivate Account'),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: const Center(
                              child: Text(
                                'Are you sure want to deactivate your Account?',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            // content: const Text('..'),
                            actions: [
                              ElevatedButton(
                                onPressed: () => Navigator.pop(context, 'No'),
                                child: const Text('No'),
                              ),
                              ElevatedButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Deactivateaccount())),
                                  child: const Text('Yes')),
                            ],
                          ));
                },
              )
            ])));
  }
}
