import 'package:call_of_duty/model/armor.dart';
import 'package:call_of_duty/model/battlepass.dart';
import 'package:call_of_duty/model/character.dart';
import 'package:call_of_duty/model/weapon.dart';
import 'package:call_of_duty/widgets/armor_weapon_widget.dart';
import 'package:call_of_duty/widgets/armor_character_widget.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';


List<Weapon> weaponList = [
  Weapon(
      level: 12,
      name: "m4",
      imageUrl2: "https://s8.uupload.ir/files/65_315.jpg",
      imageUrl: "https://s8.uupload.ir/files/59_z7yj.png",
      icon1: "https://s8.uupload.ir/files/6_vlec.png",
      icon2: "https://s8.uupload.ir/files/7_6091.png",
      icon3: "https://s8.uupload.ir/files/8_o08i.png"),
  Weapon(
      level: 42,
      imageUrl2: "https://s8.uupload.ir/files/63_cuz1.jpg",
      name: "kastov-545",
      imageUrl: "https://s8.uupload.ir/files/57_j69b.png",
      icon1: "https://s8.uupload.ir/files/6_vlec.png",
      icon2: "https://s8.uupload.ir/files/9_3mj2.png",
      icon3: "https://s8.uupload.ir/files/8_o08i.png"),
  Weapon(
      level: 3,
      imageUrl2: "https://s8.uupload.ir/files/62_dfgp.jpg",
      name: "kastov-762",
      imageUrl: "https://s8.uupload.ir/files/58_ek12.png",
      icon1: "https://s8.uupload.ir/files/7_6091.png",
      icon2: "https://s8.uupload.ir/files/9_3mj2.png",
      icon3: "https://s8.uupload.ir/files/8_o08i.png"),

  Weapon(
      imageUrl2: "https://s8.uupload.ir/files/64_fdd.jpg",
      level: 1,
      name: "m16",
      imageUrl: "https://s8.uupload.ir/files/60_7wbq.png",
      icon1: "https://s8.uupload.ir/files/9_3mj2.png",
      icon2: "https://s8.uupload.ir/files/8_o08i.png",
      icon3: "https://s8.uupload.ir/files/6_vlec.png"),
  Weapon(
      level: 32,
      name: "aug a3",
      imageUrl2: "https://s8.uupload.ir/files/66_4li1.jpg",
      imageUrl: "https://s8.uupload.ir/files/61_of56.png",
      icon1: "https://s8.uupload.ir/files/8_o08i.png",
      icon2: "https://s8.uupload.ir/files/7_6091.png",
      icon3: "https://s8.uupload.ir/files/9_3mj2.png"),
];
List<String> appBarList = [
  "Home",
  "armor",
  "battle pass",
  "upgrades",
  "store",
  "options"
];

List<BattlePass> battlePassList = [
  BattlePass(
    title: "Ghosted",
    title2: "Ghost skin",
    rank: "legendary",
    image: "https://s8.uupload.ir/files/49_y0z.jpg",
    desc1: 'Plus : Operator mission - ghost',
    desc2: 'view mission details',
    image2: "https://s8.uupload.ir/files/47_fbzy.jpg",
    isFree: false,
  ),
  BattlePass(
    image2: "https://s8.uupload.ir/files/40_j6oo.jpg",
    title2: "Mara skin",
    rank: "legendary",
    image: "https://s8.uupload.ir/files/41_jilw.jpg",
    title: "Mara",
    desc1: 'Plus : Operator mission - mara',
    desc2: 'View Mission details',
    isFree: false,
  ),
  BattlePass(
    image2: "assets/images/38.jpg",
    title2: "Mara skin",
    rank: "legendary",
    image: "https://s8.uupload.ir/files/44_kmk5.jpg",
    title: "Mara",
    desc1: 'Plus : Operator mission - mara',
    desc2: 'view mission details',
    isFree: true,
  ),
  BattlePass(
    image2: "https://s8.uupload.ir/files/39_1kir.jpg",
    title2: "consumable",
    rank: "legendary",
    image: "https://s8.uupload.ir/files/39_1kir.jpg",
    title: "Cod points",
    desc1: 'battle pass gifting bonus',
    desc2: 'Offer End in 13 Days',
    isFree: false,
  ),
  BattlePass(
    image2: "https://s8.uupload.ir/files/64_fdd_q27c.jpg",
    title2: "blueprint",
    rank: "rare",
    image: "https://s8.uupload.ir/files/64_fdd_q27c.jpg",
    title: "The purist",
    desc1: 'Plus : Operator mission - mara',
    desc2: 'view mission details',
    isGun: true,
    isFree: false,
  ),
  BattlePass(
    image2: "https://s8.uupload.ir/files/47_z7a1.jpg",
    title2: "Vehicle skin",
    rank: "epic",
    image: "https://s8.uupload.ir/files/47_z7a1.jpg",
    title: "BEE",
    desc1: 'Plus : Operator mission - mara',
    desc2: 'view mission details',
    isFree: false,
  ),
  BattlePass(
    image2: "https://s8.uupload.ir/files/70_4qk0.jpg",
    title2: "Mara skin",
    rank: "legendary",
    image: "https://s8.uupload.ir/files/70_4qk0.jpg",
    title: "mstr",
    desc1: 'Plus : Operator mission - mara',
    desc2: 'view mission details',
    isFree: true,
  ),
];

List<Armor> armorList = [

  Armor(
      title: "weapon",
      icon: FrinoIcons.f_wallet,
      isNew: false,
      width: 4,
      imageUrl: "https://s8.uupload.ir/files/38_az3.jpg"),
  Armor(
      title: "Character",
      icon: FrinoIcons.f_male,
      isNew: true,
      width: 2,
      imageUrl: "https://s8.uupload.ir/files/43_gpx8.jpg"),
  Armor(
      title: "Lucky royale",
      icon: FrinoIcons.f_tv,
      isNew: true,
      width: 1,
      imageUrl: "https://s8.uupload.ir/files/45_4giy.jpg"),

  Armor(
      title: "Skins",
      icon: Iconsax.box,
      isNew: false,
      width: 4,
      imageUrl: "https://s8.uupload.ir/files/41_9d6a.jpg"),
  Armor(
      title: "pet",
      icon: Iconsax.pet,
      isNew: false,
      width: 5,
      imageUrl: "https://s8.uupload.ir/files/42_79em.jpg"),
  Armor(
      title: "collection",
      icon: FrinoIcons.f_train,
      isNew: true,
      width: 3,
      imageUrl: "https://s8.uupload.ir/files/40_hfwr.jpg"),
  Armor(
      title: "Store",
      icon: Iconsax.shop,
      isNew: false,
      width: 4,
      imageUrl: "https://s8.uupload.ir/files/39_gsl1.jpg"),

];

List<Widget> armorBottomOptions = [
  ArmorWeaponWidget(),
  ArmorCharacterWidget(),
];
List<Character> characterList = [
  Character(
      image: "https://s8.uupload.ir/files/55_uimo.jpg",
      name: "wraith",
      service: "Norwegian intelligent\nservice",
      image2: "https://s8.uupload.ir/files/67_z3j2.jpg"),
  Character(
      image: "https://s8.uupload.ir/files/47_s1ol.jpg",
      name: "mace", service: "jackals",
      image2: "https://s8.uupload.ir/files/46_9ypt.jpg"),
  Character( service: "SAS",
      image: "https://s8.uupload.ir/files/52_dv21.jpg",
      name: "captain  price",
      image2: "https://s8.uupload.ir/files/46_9ypt.jpg"),
  Character( service: "CIA",
      image: "https://s8.uupload.ir/files/48_8hjo.jpg",
      name: "nikto",
      image2: "https://s8.uupload.ir/files/46_9ypt.jpg"),
  Character( service: "sas",
      image: "https://s8.uupload.ir/files/49_y0z.jpg",
      name: "Ghost",
      image2: "https://s8.uupload.ir/files/47_fbzy.jpg"),
  Character( service: "Warcom",
      image: "https://s8.uupload.ir/files/46_9ypt.jpg",
      name: "mara",
      image2: "https://s8.uupload.ir/files/40_j6oo.jpg"),
  Character( service: "MI6",
      image: "https://s8.uupload.ir/files/50_5qrv.jpg",
      name: "Helen Park",
      image2: "https://s8.uupload.ir/files/69_ah5m.jpg"),
  Character( service: "warcom",
      image: "https://s8.uupload.ir/files/53_1qi6.jpg",
      name: "mara",
      image2: "https://s8.uupload.ir/files/46_9ypt.jpg"),
  Character( service: "KGB",
      image: "https://s8.uupload.ir/files/51_zcou.jpg",
      name: "Yirina Portnova",
      image2: "https://s8.uupload.ir/files/51_zcou.jpg"),
  Character( service: "KGB",
      image: "https://s8.uupload.ir/files/68_y0pr.jpg",
      name: "Minotaur",
      image2: "https://s8.uupload.ir/files/68_y0pr.jpg"),
];
