import 'package:flutter/material.dart';
import 'package:organic_shop/Components/drawer.dart';
import 'package:organic_shop/Locale/locales.dart';
import 'package:organic_shop/Theme/colors.dart';

class Offer {
  Offer(this.offerContent, this.offerCode);
  String offerContent;
  String offerCode;
}

class OffersPage extends StatefulWidget {
  @override
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    List<Offer> offers = [
      Offer((locale?.offer1)!, 'GET50'),
      Offer((locale?.offer2)!, 'VEGG3'),
      Offer((locale?.offer3)!, 'SUG500'),
      Offer((locale?.offer1)!, 'GET50'),
      Offer((locale?.offer2)!, 'VEGG3'),
      Offer((locale?.offer3)!, 'SUG500'),
      Offer((locale?.offer1)!, 'GET50'),
      Offer((locale?.offer2)!, 'VEGG3'),
      Offer((locale?.offer3)!, 'SUG500'),
    ];
    return Scaffold(
      drawer: buildDrawer(context),
      appBar: AppBar(
        title: Text(
          (locale?.offers)!,
          style: TextStyle(
            color: kMainTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: offers.length,
          itemBuilder: (context, index) {
            return buildOfferCard(
                context, offers[index].offerContent, offers[index].offerCode);
          }),
    );
  }

  Card buildOfferCard(
      BuildContext context, String offerContent, String offerCode) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      color: Theme.of(context).cardColor,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        title: Text(offerContent,
            style: TextStyle(
                color: Theme.of(context).scaffoldBackgroundColor,
                letterSpacing: 0.3,
                fontSize: 16)),
        trailing: MaterialButton(
            minWidth: 90,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () {},
            child: Text(offerCode,
                style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 15))),
      ),
    );
  }
}
