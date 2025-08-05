import 'package:medi_cart/core/utils/constants/image_string.dart';

class Category {
  String name;
  String image;
  Category({required this.name, required this.image});
}

List<Category> categories = [
  Category(name: 'Diognostic', image: CIMages.diognosisSVGIcon),
  Category(name: 'Surgical', image: CIMages.sissoresSvgIcon),
  Category(name: 'Lab Equipment', image: CIMages.microscopeSVGIcon),
  Category(name: 'Patient Monitoring', image: CIMages.heartSVGIcon),
  Category(name: 'Imaging', image: CIMages.monitoringSVGIcon),
  Category(name: 'Therapeutic', image: CIMages.vaccineSVGIcon),
];
