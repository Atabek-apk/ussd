

import 'package:ussd_tm/utils/tools/file_importers.dart';

List<CompanyModel> companies = [
  CompanyModel(
      balancedetectorCode: "*0800#",
      packagedetectorCode: "*0805#",
      tarifdetectorCode: "*0809*6*1*1#",
    internetPakets: [
      CollectionModel("50 MB", price: '3 TMT', expireDate: "30 gün", ussd: "*0850*3#"),
      CollectionModel("100 MB", price: '5 TMT', expireDate: "30 gün", ussd: "*0850*5#"),
      CollectionModel("250 MB", price: '10 TMT', expireDate: "30 gün", ussd: "*0850*10#"),
      CollectionModel("1500 MB", price: '60 TMT', expireDate: "30 gün", ussd: "*0850*60#"),
      CollectionModel("20000 MB", price: '200 TMT', expireDate: "30 gün", ussd: "*0850*200#"),
    ],
    tarifs: [
      TarifModel('', ussd: '', price: 'price', minut: 'minut', sms: 'sms', mb: 'mb'),
      TarifModel('', ussd: '', price: 'price', minut: 'minut', sms: 'sms', mb: 'mb'),
      TarifModel('', ussd: '', price: 'price', minut: 'minut', sms: 'sms', mb: 'mb'),
      TarifModel('', ussd: '', price: 'price', minut: 'minut', sms: 'sms', mb: 'mb'),
      TarifModel('', ussd: '', price: 'price', minut: 'minut', sms: 'sms', mb: 'mb'),
      TarifModel('', ussd: '', price: 'price', minut: 'minut', sms: 'sms', mb: 'mb'),
      TarifModel('', ussd: '', price: 'price', minut: 'minut', sms: 'sms', mb: 'mb'),
      TarifModel('', ussd: '', price: 'price', minut: 'minut', sms: 'sms', mb: 'mb'),
    ],
      companyLogo: AppImages.gerekLogo,
      images: [
    AppImages.gerekLogo,
    AppImages.gerekLogo,
    AppImages.gerekLogo,
    AppImages.gerekLogo,
  ]),
];

List<MenuModel> menus = [
  MenuModel(title: 'Tarifyň görnüşleri', icon: AppIcons.menu),
  MenuModel(title: 'Internet paketlary', icon: AppIcons.internet),
  MenuModel(title: 'Balansy barlamak', icon: AppIcons.wallet),
  MenuModel(title: 'Tarifyň galyndysyny barlamak', icon: AppIcons.diagram),
  MenuModel(title: 'Tarifyňy bilmek', icon: AppIcons.simCard),
];
