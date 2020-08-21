String fatique =
    'Physical and mental fatigue are different, but they often occur together. Repeated physical exhaustion can lead to mental fatigue over time. \n \n Poor sleep, particularly when it occurs for a long time, can also lead to fatigue. Officials recommend that adults get 7–8 hours of sleep each night. According to some research, however, around 1 in 3 people in the United States say that they do not get enough sleep. \n\n Eating a healthful diet and getting regular physical activity. Read more ...';

String handShake =
    'Handshakes are particularly difficult to decline because of when they happen. We generally do not shake hands with friends or family, who might forgive your germaphobic reaction or be aware that you live with someone at a heightened risk of developing deadly complications from Covid-19. Instead, we shake hands with people in professional settings—it’s a cultural norm in the business world globally—and there’s typically an agenda, an ego, or a power structure to consider.';
String faceMask =
    'Facemasks help limit the spread of germs.  When someone talks, coughs, or sneezes they may release tiny drops into the air that can infect others. If someone is ill a face masks can reduce the number of germs that the wearer releases and can protect other people from becoming sick.  A face mask also protects the wearer’s nose and mouth from splashes or sprays of body fluids.';
String socialDistance =
    'Social distancing, also called “physical distancing,” means keeping a safe space between yourself and other people who are not from your household. \n \n To practice social or physical distancing, stay at least 6 feet (about 2 arms’ length) from other people who are not from your household in both indoor and outdoor spaces.';
String washHand =
    'Washing your hands is easy, and it’s one of the most effective ways to prevent the spread of germs. Clean hands can stop germs from spreading from one person to another and throughout an entire community—from your home and workplace to childcare facilities and hospitals.';

class Requirements {
  String name;
  String image;
  String details;

  Requirements({this.name, this.image, this.details});
}

List<Requirements> requirementList = [
  Requirements(
      name: "Wear Facemask",
      image: 'assets/images/facemask.jpg',
      details: faceMask),
  Requirements(
      name: "Social Distance",
      image: 'assets/images/distance.jpg',
      details: socialDistance),
  Requirements(
      name: "Wash Hands", image: 'assets/images/wash.png', details: washHand),
  Requirements(
      name: "Avoid Handshake",
      image: 'assets/images/nohandshake.jpg',
      details: handShake),
];
