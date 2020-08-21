String fever =
    "Normal body temperature for an adult and a child is 37°C, but it also depends on individual differences which may cause minor fluctuations depending on the time of the day. Normal body temperature will be determined by: \n \n  A person’s age \n Recent activities that they have been carrying out (for instance, if you have been out in the sun for very long) \n Time of the day or night \n  The part of the body you take the temperature from (the ear and under the tongue are generally considered more accurate than say, in the armpit). Read more ....";
String cough =
    'The most prominent symptoms of COVID-19 are fever and fatigue, and you may feel like you have a cold or flu. Cough is present in about half of infected patients. \n \n Considering that COVID-19 irritates lung tissue, the cough is dry and persistent. It is accompanied with shortness of breath and muscle pain. \n \n As disease progresses, the lung tissue is filled with fluid and you may feel even more short of breath as your body struggles to get enough oxygen. Read more...';
String fatique =
    'Physical and mental fatigue are different, but they often occur together. Repeated physical exhaustion can lead to mental fatigue over time. \n \n Poor sleep, particularly when it occurs for a long time, can also lead to fatigue. Officials recommend that adults get 7–8 hours of sleep each night. According to some research, however, around 1 in 3 people in the United States say that they do not get enough sleep. \n\n Eating a healthful diet and getting regular physical activity. Read more ...';

class Symptoms {
  String name;
  String description;
  String image;

  Symptoms({
    this.name,
    this.description,
    this.image,
  });
}

List<Symptoms> symptoms = [
  Symptoms(
    name: 'High Fever',
    description: fever,
    image: 'assets/images/fever.png',
  ),
  Symptoms(
      name: 'Dry Cough',
      description: cough,
      image: 'assets/images/cough.jpg'),
  Symptoms(
    name: 'Faique',
    description: fatique,
    image: 'assets/images/tiredness.png',
  ),
];
