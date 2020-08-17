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
    description:
        'A high grade fever happens when your body temperature is 103°F (39.4°C) or above. Most fevers usually go away by themselves after 1 to 3 days. A persistent or recurrent fever may last or keep coming back for up to 14 days. A fever that lasts longer than normal may be serious even if it is only a slight fever',
    image: 'assets/images/fever.png',
  ),
  Symptoms(
      name: 'Dry Cough',
      description:
          'A cough is a reflex action that clears your airway of irritants and mucus. There are two types of cough: productive and nonproductive. A productive cough produces phlegm or mucus, clearing it from the lungs. A nonproductive cough, also known as a dry cough, doesn’t produce phlegm or mucus.',
      image: 'assets/images/cough.png'),
  Symptoms(
    name: 'Tiredness',
    description:
        'In today "always on" world, we often try to cram too much into our daily lives. And to try to stay on top of things, we sometimes consume too much alcohol or caffeine, or eat sugary and high-fat snacks on the go rather than sitting down for a proper meal.The main lifestyle causes of tiredness include:',
    image: 'assets/images/tiredness.png',
  ),
];
