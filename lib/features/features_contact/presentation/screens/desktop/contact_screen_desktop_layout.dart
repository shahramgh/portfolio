import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:portfolio_website/core/utils/res/app_size.dart';
import 'package:portfolio_website/core/utils/res/color.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart'; // Only import if required functionality is not exposed by default

class ContactScreenWebLayout extends StatelessWidget {
  ContactScreenWebLayout({
    Key? key,
  }) : super(key: key);
  final MapController _mapController = MapController();
  TextEditingController nameField = TextEditingController();
  TextEditingController subjectField = TextEditingController();
  TextEditingController emailField = TextEditingController();
  TextEditingController messageField = TextEditingController();

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(32.844343803808954, 51.56574399506647),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(32.844343803808954, 51.56574399506647),
      tilt: 32.84435113048055,
      zoom: 51.56574464575594);

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  @override
  Widget build(BuildContext context) {
    return bodyWebPage(context);
  }

  Widget bodyWebPage(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: double.infinity),
      child: Column(
        children: [
          Container(
            color: appleWhite,
            width: AppSize.width(context),
            height: AppSize.height(context) * 0.7,
            // flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.width(context) * 0.05,
                  vertical: AppSize.height(context) * 0.05),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: GoogleMap(
                  mapType: MapType.hybrid,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(32.844343803808954, 51.56574399506647),
                    zoom: 14.4746,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            width: AppSize.width(context),
            height: AppSize.height(context) * 0.9,
            // flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: AbsorbPointer(
                    absorbing: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Contact Form"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: nameField,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Dark_Gray, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Iron_Gray, width: 3.0),
                              ),
                              hintText: "name",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: subjectField,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Dark_Gray, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Iron_Gray, width: 3.0),
                              ),
                              hintText: "subject",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: emailField,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Dark_Gray, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Iron_Gray, width: 3.0),
                              ),
                              hintText: "email",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: messageField,
                            maxLines: 10,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Dark_Gray, width: 3.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Iron_Gray, width: 3.0),
                              ),
                              hintText: "message",
                            ),
                          ),
                        ),
                        Container(
                          width: AppSize.width(context) * 0.1,
                          child: ElevatedButton(
                            clipBehavior: Clip.antiAlias,
                            onPressed: () {
                              const service_id = 'service_7bsaekv';
                              const template_id = 'template_n3eu7cs';
                              const user_id = 'user_hswMLSLvzBJE6mzii';
                              final url = Uri.parse(
                                  'https://api.emailjs.com/api/v1.0/email/send');
                              http.post(
                                url,
                                headers: {'Content-Type': 'application/json'},
                                body: jsonEncode(
                                  {
                                    'service_id': service_id,
                                    'template_id': template_id,
                                    'user_id': user_id,
                                    'template_params': {
                                      'user_name': nameField.text,
                                      'user_email': emailField.text,
                                      'user_subject': subjectField.text,
                                      'user_message': messageField.text
                                    }
                                  },
                                ),
                              );
                            },
                            child: const Text("Send"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Text("Contact Info"),
                      ),
                      ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        leading: Icon(CupertinoIcons.location_solid),
                        title: Text(
                          "\t72.NO,Modarres Boulevard,Isfahan Province, Shahin Shahr",
                          style: TextStyle(
                              color: Iron_Gray,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ),
                      ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        leading: Icon(CupertinoIcons.phone),
                        title: Text(
                          "\t+989132064434\n\t+989351057876",
                          style: TextStyle(
                              color: Iron_Gray,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ),
                      ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        leading: Icon(CupertinoIcons.globe),
                        title: Text(
                          "\twww.shahram-ghorbani.ir",
                          style: TextStyle(
                              color: Iron_Gray,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ),
                      ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        leading: Icon(CupertinoIcons.at),
                        title: Text(
                          "\tshahram.gh.1988@gmail.com",
                          style: TextStyle(
                              color: Iron_Gray,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
