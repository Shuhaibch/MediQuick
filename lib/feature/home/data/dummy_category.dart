import 'package:medi_cart/core/utils/constants/image_string.dart';

class Category {
  String name;
  String image;
  Category({required this.name, required this.image});
}

List<Category> categories = [
  Category(name: 'Medical Devices', image: CIMages.diognosisSVGIcon),
  Category(
    name: 'Medical Consumables',
    image: CIMages.medicalConsumableSVGIcon,
  ),
  Category(name: 'Surgical Instruments', image: CIMages.sissoresSvgIcon),
  Category(name: 'General Consumables', image: CIMages.otherConsumableSVGIcon),
  Category(name: 'Imaging', image: CIMages.monitoringSVGIcon),
  Category(name: 'Therapeutic', image: CIMages.vaccineSVGIcon),
];

final List<String> imageList = [
 CIMages.productIMG,
 CIMages.p1Image,
 CIMages.p2Image,
 CIMages.p3Image,
 CIMages.p4Image,
 CIMages.p5Image,
 CIMages.p6Image,
 CIMages.p7Image,
 CIMages.p8Image,
 CIMages.p9Image,
];
