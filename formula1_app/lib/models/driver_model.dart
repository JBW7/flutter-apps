import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:formula1_app/models/driver_picture_carousel_model.dart';

class Driver {
  String name;
  String rank;
  String team;
  String points;
  Color? color;
  String number;
  String firstName;
  String lastName;
  String wins;
  String podiums;
  String fastestLap;
  String gpEntered;
  String worldchampionships;
  String driverImageUrl;
  String teamImageUrl;
  String teamCarUrl;
  String biography;
  String carousel;
  String image1url;
  String image2url;
  String image3url;
  String image4url;
  String image5url;
  String image6url;

  Driver({
    required this.name,
    required this.rank,
    required this.team,
    required this.points,
    required this.color,
    required this.number,
    required this.firstName,
    required this.lastName,
    required this.wins,
    required this.podiums,
    required this.fastestLap,
    required this.gpEntered,
    required this.worldchampionships,
    required this.driverImageUrl,
    required this.teamImageUrl,
    required this.teamCarUrl,
    required this.biography,
    required this.carousel,
    required this.image1url,
    required this.image2url,
    required this.image3url,
    required this.image4url,
    required this.image5url,
    required this.image6url,
  });
}


List <Driver> drivers = [
  Driver(
    name: 'Max Verstappen',
    rank: '1',
    team: 'Red Bull Racing',
    points: '182',
    color: Colors.blue[800],
    number: '33',
    firstName: 'Max ',
    lastName: 'Verstappen',
    wins: '15',
    podiums: '50',
    fastestLap: '14',
    gpEntered: '128',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/MaxVerstappen_img.png',
    teamImageUrl: 'assets/images/RedBull_img.png',
    teamCarUrl: 'assets/images/RedBull_car.png',
    carousel: pictureCarousels[2].image1url,
    biography: 
    "He’s Max by name, and max by nature. \n\n"
    "Arriving as Formula 1’s youngest ever competitor at just 17 years old, Verstappen pushed his car, his rivals and the sport’s record books to the limit. The baby-faced Dutchman with the heart of a lion took the Toro Rosso – and then the Red Bull – by the horns with his instinctive racing style. \n\n"
    "F1’s youngest points scorer soon became its youngest race winner – at the age of 18 years and 228 days – with an opportunistic but controlled drive on debut for Red Bull in Barcelona 2016. A true wheel-to-wheel racer, another stunning drive in Brazil from the back of the pack to the podium on a treacherous wet track kept the plaudits coming.\n\n"
    "Verstappen’s no-holds-barred attitude and hard defending have sometimes landed him in hot water with his peers and paymasters. But the mistakes that initially marred his potential have given way to maturity, while the bravado and energy that make him a blockbuster talent have remained – and the victories have kept on coming.\n\n"
    "The son of former F1 driver Jos Verstappen and super-quick karting Mum Sophie Kumpen, racing runs through his genes. Despite moving out of Dad’s house to live in Monaco, Verstappen remains close to his family, and though he’s not afraid to speak his mind, he can still be surprisingly shy. \n\n"
    "The expectations for the next generation’s leading light are sky high – but with Verstappen there’s a feeling that the sky’s the limit.",
    image1url: 'assets/images/MaxVerstappen1.jpg',
    image2url: 'assets/images/MaxVerstappen2.jpg',
    image3url: 'assets/images/MaxVerstappen3.jpg',
    image4url: 'assets/images/MaxVerstappen4.jpg',
    image5url: 'assets/images/MaxVerstappen5.jpg',
    image6url: 'assets/images/MaxVerstappen6.jpg',
  ),
  Driver(
    name: 'Lewis Hamilton',
    rank: '2',
    team: 'Mercedes',
    points: '150',
    color: Colors.tealAccent,
    number: '44',
    firstName: 'Lewis ',
    lastName: 'Hamilton',
    wins: '98',
    podiums: '171',
    fastestLap: '56',
    gpEntered: '275',
    worldchampionships: '7',
    driverImageUrl: 'assets/images/LewisHamilton_img.png',
    teamImageUrl: 'assets/images/Mercedes_img.png',
    teamCarUrl: 'assets/images/Mercedes_car.png',
    carousel: pictureCarousels[1].image1url,
    biography:
    "‘Still I Rise’ – these are the words emblazoned across the back of Lewis Hamilton’s helmet and tattooed across his shoulders, and ever since annihilating expectations with one of the greatest rookie performances in F1 history in 2007, that’s literally all he’s done: risen to the top of the all-time pole positions list ahead of his hero Ayrton Senna, surged into first place in the wins column surpassing the inimitable Michael Schumacher, and then matched the legendary German’s seven world titles.\n\n"
    "Is he the G.O.A.T? Few would deny that he’s in the conversation – and what’s more he’s got there his way, twinning his relentless speed with a refusal to conform to stereotypes for how a racing driver should think, dress or behave.\n\n"
    "Respect is hard earned in F1, but Hamilton – now Sir Lewis Hamilton to be precise – has it from every one of his peers. Why? Because they know that whatever the track, whatever the conditions, whatever the situation, when his visor goes down and the lights go out, it’s Hammertime.",
    image1url: 'assets/images/LewisHamilton1.jpg',
    image2url: 'assets/images/LewisHamilton2.jpg',
    image3url: 'assets/images/LewisHamilton3.jpg',
    image4url: 'assets/images/LewisHamilton4.jpg',
    image5url: 'assets/images/LewisHamilton5.jpg',
    image6url: 'assets/images/LewisHamilton6.jpg',
  ),
  Driver(
    name: 'Sergio Perez',
    rank: '3',
    team: 'Red Bull Racing',
    points: '104',
    color: Colors.blue[800],
    number: '11',
    firstName: 'Sergio ',
    lastName: 'Perez',
    podiums: '12',
    wins: '2',
    fastestLap: '4',
    gpEntered: '202',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/SergioPerez_img.png',
    teamImageUrl: 'assets/images/RedBull_img.png',
    teamCarUrl: 'assets/images/RedBull_car.png',
    carousel: pictureCarousels[3].image1url,
    biography: 
    "He’s the fighter with a gentle touch from the land of the Lucha Libre.\n\n"
    "Perez’s reputation in F1 has been built on opposite approaches to Grand Prix racing. On the one hand, he is a punchy combatant who wrestles his way through the pack and into the points. Never afraid to add a bit of spice to his on-track encounters, even his team mates don’t always escape the Mexican’s heat.\n\n"
    "Then on the other hand, Perez is a smooth operator, a master at managing tyres to eke out extra performance and give him the upper hand on strategy. A firm favourite on the grid after his time with Sauber, McLaren, Force India and Racing Point, Perez has matured into an analytical racer and team leader.\n\n"
    "A proud countryman, the Guadalajara gunslinger has amassed more points than any other Mexican in the history of F1. In Sakhir 2020 he also matched hero and compatriot Pedro Rodriguez by taking the chequered flag in first – a performance that landed him a shot at the title with Red Bull.\n\n"
    "More victories may not be assured, especially with Max Verstappen as team mate. But Perez working hard and racing with his heart are.\n\n",
    image1url: 'assets/images/SergioPerez1.jpg',
    image2url: 'assets/images/SergioPerez2.jpg',
    image3url: 'assets/images/SergioPerez3.jpg',
    image4url: 'assets/images/SergioPerez4.jpg',
    image5url: 'assets/images/SergioPerez5.jpg',
    image6url: 'assets/images/SergioPerez6.jpg',
  ),
  Driver(
    name: 'Lando Norris',
    rank: '4',
    team: 'McLaren',
    points: '11',
    color: Colors.yellow[700],
    number: '4',
    firstName: 'Lando ',
    lastName: 'Norris',
    podiums: '4',
    wins: '0',
    fastestLap: '2',
    gpEntered: '47',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/LandoNorris_img.png',
    teamImageUrl: 'assets/images/Mclaren_img.png',
    teamCarUrl: 'assets/images/McLaren_car.png',
    carousel: pictureCarousels[4].image1url,
    biography:
    "Lando Norris may not be named after Star Wars rebel Lando Calrissian - his Mum just liked the moniker - but he has flair and fighting spirit in bountiful supply.\n\n"
    "McLaren had the British teenager on their books for two years before fast-tracking him into F1’s galaxy of stars in 2019. A firecracker in his junior career, with a penchant for pole positions and wheel-to-wheel tussles, Norris didn’t let them down.\n\n"
    "Paired with the highly-rated – and far more experienced – Carlos Sainz, his rookie season was impressive, edging the Spaniard in their head-to-head qualifying battle, scoring points on 11 occasions, and only narrowly missing out on a top-10 championship placing. It was a similar pattern in 2020, with the affable Brit securing a maiden podium and moving up to ninth overall.\n\n"
    "An exciting talent on track, away from it Norris brims with a modest charm and an artistic side sees him design and paint his own race gear as a hobby. The focus for the future is allying artistry and ambition on track as McLaren rely on the promise of youth to take them back to the top.\n\n"
    "Norris hopes the downforce will be with him…\n\n",
    image1url: 'assets/images/LandoNorris1.jpg',
    image2url: 'assets/images/LandoNorris2.jpg',
    image3url: 'assets/images/LandoNorris3.jpg',
    image4url: 'assets/images/LandoNorris4.jpg',
    image5url: 'assets/images/LandoNorris5.jpg',
    image6url: 'assets/images/LandoNorris6.jpg',
  ),
  Driver(
    name: 'Valtteri Bottas',
    rank: '5',
    team: 'Mercedes',
    points: '92',
    color: Colors.tealAccent,
    number: '77',
    firstName: 'Valtteri ',
    lastName: 'Bottas',
    podiums: '61',
    wins: '9',
    fastestLap: '17',
    gpEntered: '166',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/ValtteriBottas_img.png',
    teamImageUrl: 'assets/images/Mercedes_img.png',
    teamCarUrl: 'assets/images/Mercedes_car.png',
    carousel: pictureCarousels[5].image1url,
    biography: 
    "Learning his craft on Finnish roads of ice and snow, he was born to be a Grand Prix racer.\n\n"
    "Bottas explains that if you can drive on the frozen roads of his homeland then you can drive anywhere. Then there’s the Finnish mentality –reserved, diligent and calm the fast lane of F1 doesn’t faze him. \n\n"
    "Making his F1 debut with Williams in 2013, Bottas soon became part of the family. Points and podiums followed with the reliable racer even amassing the most points without a win, a record he resented but that showcased his ability. The fact the Finn was such a points machine saw him suddenly promoted to the most coveted seat in F1 - Nico Rosberg’s vacant championship-winning seat at Mercedes.\n\n"
    "Bottas blossomed at the Silver Arrows in 2017, unleashing his pace to clock up personal pole positions and victories as well as a team championship for the famous Mercedes marque alongside Lewis Hamilton. He even tied with Hamilton and Sebastian Vettel with 13 podiums.\n\n"
    "For a shy guy, it brought a confidence boost and a new swagger – albeit in a very demur Finnish fashion. He would need all that confidence in 2018 – a season Bottas described as his worst in F1, as he took zero wins to Hamilton’s 11. That, though, was a reflection more of his team mate’s brilliance thank of any shortcomings on his own part.\n\n" 
    "Bottas stepped it up a level in 2019, four victories securing a convincing second in the championship behind Hamilton, but that dropped to two wins to his team mate's 11 in 2020. Now he must dig even deeper if he’s to regularly beat the man on the other side of the garage - and fend off the Red Bulls and Ferraris - and drive home as the fourth Finnish world champion.",
    image1url: 'assets/images/ValtteriBottas1.jpg',
    image2url: 'assets/images/ValtteriBottas2.jpg',
    image3url: 'assets/images/ValtteriBottas3.jpg',
    image4url: 'assets/images/ValtteriBottas4.jpg',
    image5url: 'assets/images/ValtteriBottas5.jpg',
    image6url: 'assets/images/ValtteriBottas6.jpg',
  ),
  Driver(
    name: 'Charles Leclerc',
    rank: '6',
    team: 'Ferrari',
    points: '62',
    color: Colors.red[600],
    number: '16',
    firstName: 'Charles ',
    lastName: 'Leclerc',
    podiums: '12',
    wins: '0',
    fastestLap: '4',
    gpEntered: '68',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/CharlesLeclerc_img.png',
    teamImageUrl: 'assets/images/Ferrari_img.png',
    teamCarUrl: 'assets/images/Ferrari_car.png',
    carousel: pictureCarousels[6].image1url,
    biography: 
    "Born in the Mediterranean idyll of Monaco, Leclerc arrived in F1 on a tidal wave of expectation.\n\n"
    "Practically peerless on his way to the GP3 and Formula 2 crowns, he showcased a dazzling array of skills from scorching pole positions, commanding victories – even when his car caught fire twice at Silverstone – to an ability to muscle his way through the pack. Winning back-to-back championships also taught Leclerc how to handle pressure, another useful tool in the big pond of Formula 1 racing. \n\n"
    "Leclerc may have quit school early, but he looks every inch the complete driver. World champions Lewis Hamilton and Sebastian Vettel have even gone on record to say Leclerc is the real deal – and it’s not often they agree on anything…\n\n"
    "Stepping up to F1 in 2018, Leclerc showed flashes of ballistic pace on Saturdays and racing brilliance on Sundays, dragging his Sauber beyond its limits – and earning himself a money-can’t-buy race seat at Ferrari for 2019, stepping into the shoes of the Scuderia’s last world champion, Kimi Raikkonen. \n\n"
    "There he immediately put the cat among the proverbial pigeons, unafraid to go wheel-to-wheel with established number one, Sebastian Vettel. A maiden F1 victory at Spa was followed by another a week later on Ferrari’s hallowed home turf of Monza. The tifosi had found another new hero – who then became the first man to out-score Vettel over a season with the Scuderia, a feat he repeated in crushing fashion the following year.\n\n"
    "Out of the car, Leclerc is modest and thoughtful - but then he is on his own very personal mission. This exciting young talent is racing for his late father Herve and his friend and mentor Jules Bianchi, the F1 driver who died in 2015. \n\n"
    "On the evidence so far, he is doing them both proud.",
    image1url: 'assets/images/CharlesLeclerc1.jpg',
    image2url: 'assets/images/CharlesLeclerc2.jpg',
    image3url: 'assets/images/CharlesLeclerc3.jpg',
    image4url: 'assets/images/CharlesLeclerc4.jpg',
    image5url: 'assets/images/CharlesLeclerc5.jpg',
    image6url: 'assets/images/CharlesLeclerc6.jpg',
  ),
  Driver(
    name: 'Carlos Sainz',
    rank: '7',
    team: 'Ferrari',
    points: '60',
    color: Colors.red[600],
    number: '55',
    firstName: 'Carlos ',
    lastName: 'Sainz',
    podiums: '3',
    wins: '0',
    fastestLap: '1',
    gpEntered: '128',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/CarlosSainz_img.png',
    teamImageUrl: 'assets/images/Ferrari_img.png',
    teamCarUrl: 'assets/images/Ferrari_car.png',
    carousel: pictureCarousels[0].image1url,
    biography:
    "He’s the matador from Madrid racing royalty. \n\n"
    "Entering F1’s Bull Ring paired alongside Max Verstappen at Toro Rosso in 2015, Sainz quickly showed his fighting spirit. A tenacious racer, Sainz puts the car on the edge as he hustles his way through the pack. No wonder he’s earned the nickname Chilli.\n\n"
    "But the Spaniard is intelligent as well as instinctive, thinking his way through a race and into the points. This calm temperament follows him off track where he remains unfazed by the pressures of forging a Grand Prix career with a famous name. \n\n"
    "Sainz is the son of double World Rally champion, also his namesake, and has brought some of Dad’s driving skills to the F1 circuit – junior loves a delicious dose of drift for one. \n\n"
    "After following in his famous father’s tyre tracks, Sainz has had big racing boots to fill – first at McLaren where he replaced his childhood hero Fernando Alonso, and now at Ferrari, in the seat formerly owned by Sebastian Vettel. It is never easy living in the shadow of sporting giants, but Sainz has shown the drive and disposition to deal with it. Vamos!\n\n",
    image1url: 'assets/images/CarlosSainz1.jpg',
    image2url: 'assets/images/CarlosSainz2.jpg',
    image3url: 'assets/images/CarlosSainz3.jpg',
    image4url: 'assets/images/CarlosSainz4.jpg',
    image5url: 'assets/images/CarlosSainz5.jpg',
    image6url: 'assets/images/CarlosSainz6.jpg',
  ),
  Driver(
    name: 'Daniel Ricciardo',
    rank: '8',
    team: 'McLaren',
    points: '40',
    color: Colors.yellow[700],
    number: '3',
    firstName: 'Daniel ',
    lastName: 'Ricciardo',
    podiums: '31',
    wins: '7',
    fastestLap: '15',
    gpEntered: '197',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/DanielRicciardo_img.png',
    teamImageUrl: 'assets/images/Mclaren_img.png',
    teamCarUrl: 'assets/images/McLaren_car.png',
    carousel: pictureCarousels[7].image1url,
    biography: 
    "The self-styled “Honey Badger” is fuzzy on the outside and feisty on the inside. Drivers beware because behind Ricciardo’s laidback persona and big grin is a razor-sharp racer with a bite.\n\n"
    "The Australian combines all-out speed with impressive race craft. Never afraid to push to the limits if it means pulling off a pass, Ricciardo is a proven race-winner for Red Bull, capable of consistently finishing at the business end of the championship table.\n\n"
    "A regular podium-finisher, Ricciardo has christened the steps around the world with a dousing of Aussie culture – the ‘Shoey’ – as he quaffed champagne from a soggy racing boot. Yes it’s goofy, but the trademark celebration illustrates why he is loved for his sense of humour but never underestimated on track.\n\n"
    "His career’s next move to Renault’s works team brought fresh challenges for the Perth pilot, but failed to deliver his dream of following Jack Brabham and Alan Jones as the next world champion from Down Under.\n\n"
    "And in 2021 he hopes a new chapter with the Mercedes-powered McLaren team might just change that. But whatever happens, Ricciardo is sure to keep on smiling.",
    image1url: 'assets/images/DanielRicciardo1.jpg',
    image2url: 'assets/images/DanielRicciardo2.jpg',
    image3url: 'assets/images/DanielRicciardo3.jpg',
    image4url: 'assets/images/DanielRicciardo4.jpg',
    image5url: 'assets/images/DanielRicciardo5.jpg',
    image6url: 'assets/images/DanielRicciardo6.jpg',
  ),
  Driver(
    name: 'Pierre Gasly',
    rank: '9',
    team: 'AlphaTauri',
    points: '39',
    color: Colors.grey[900],
    number: '10',
    firstName: 'Pierre ',
    lastName: 'Gasly',
    podiums: '3',
    wins: '1',
    fastestLap: '2',
    gpEntered: '73',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/PierreGasly_img.png',
    teamImageUrl: 'assets/images/Alphatauri_img.png',
    teamCarUrl: 'assets/images/AlphaTauri_car.png',
    carousel: pictureCarousels[8].image1url,
    biography: 
    "If there’s one man who knows how big a rollercoaster ride an F1 driver’s career can be, it’s Pierre Gasly!\n\n"
    "The flying Frenchman was called up to make his 2017 debut in Malaysia in place of Daniil Kvyat and, after proving his mettle, he was named a Toro Rosso driver the following year.  A further 21 races into his fledgling career, Gasly was moved up again – this time to replace Red Bull big gun Daniel Ricciardo.\n\n"
    "Gasly seemed to have a knack of being in the right place at the right time – a quality that’s equally handy on track. A series of impressive 2018 performances for Toro Rosso – including a brilliant fourth place in Bahrain – showed exciting promise for what he might do with the ‘A’ team in 2019.\n\n"
    "Unfortunately that promise only appeared in flashes – and he quickly suffered from unfavourable comparisons with superstar team mate Max Verstappen. So much so that after the summer break, he was sent back to Toro Rosso, with another young up-and-comer – Alex Albon – being given a shot in the ‘senior’ Red Bull seat.\n\n"
    "But Gasly bounced back, as only Gasly can. In the season’s remaining nine races he scored almost as many points as team mate Kvyat managed over the entire year – and secured his best-ever race result with P2 in Brazil. That trajectory continued in 2020, peaking with an emotional maiden win at the renamed AlphaTauri team’s home race in Italy.\n\n"
    "The question now is can he maintain momentum and earn himself another shot at the F1 bigtime…",
    image1url: 'assets/images/PierreGasly1.jpg',
    image2url: 'assets/images/PierreGasly2.jpg',
    image3url: 'assets/images/PierreGasly3.jpg',
    image4url: 'assets/images/PierreGasly4.jpg',
    image5url: 'assets/images/PierreGasly5.jpg',
    image6url: 'assets/images/PierreGasly6.jpg',
  ),
  Driver(
    name: 'Sebastian Vettel',
    rank: '10',
    team: 'Aston Martin',
    points: '30',
    color: Colors.green[900],
    number: '5',
    firstName: 'Sebastian ',
    lastName: 'Vettel',
    podiums: '122',
    wins: '53',
    fastestLap: '38',
    gpEntered: '267',
    worldchampionships: '4',
    driverImageUrl: 'assets/images/SebastianVettel_img.png',
    teamImageUrl: 'assets/images/AstonMartinRacing_img.png',
    teamCarUrl: 'assets/images/AstonMartin_car.png',
    carousel: pictureCarousels[9].image1url,
    biography: 
    "Born and raised a Bull, then a Prancing Horse, and now the face of Aston Martin’s Formula 1 revival, F1's poster boy of early achievement had won more than all but two drivers in history by the time he was just 26, including back-to-back world titles between 2010 and 2013.\n\n"
    "Vettel’s trademark is pure pace – and of course his one-finger victory salute. In the chase to the chequered flag, he likes to lead from the front and just like his hero, Michael Schumacher. But for all his competitive streak, Vettel has a playful side too and has been known to let loose with a spot of Beatles karaoke - and baby can he drive a car.\n\n"
    "Alongside his four world crowns he can boast more than 50 pole positions and race victories, ranking him – statistically - above many of the biggest names in F1 history. No wonder then that he has twice been hand-picked to return some of Grand Prix oldest names to glory.\n\n"
    "Following his move to Maranello, that mission didn’t exactly go to plan as Vettel’s rivalry with Lewis Hamilton intensified. Then came an additional thorn in his side – young-gun Ferrari team mate Charles Leclerc, the first man to outscore him over a season at the Scuderia.\n\n"
    "Now, as he takes on a new challenge as Aston Martin’s team leader, Vettel will need to call on all his speed and experience if he’s to reassert himself over his rivals – and to re-establish his reputation as one of the sport’s all-time greats.",
    image1url: 'assets/images/SebastianVettel1.jpg',
    image2url: 'assets/images/SebastianVettel2.jpg',
    image3url: 'assets/images/SebastianVettel3.jpg',
    image4url: 'assets/images/SebastianVettel4.jpg',
    image5url: 'assets/images/SebastianVettel5.jpg',
    image6url: 'assets/images/SebastianVettel6.jpg',
  ),
  Driver(
    name: 'Fernando Alonso',
    rank: '11',
    team: 'Alpine',
    points: '20',
    color: Colors.lightBlue,
    number: '14',
    firstName: 'Fernando ',
    lastName: 'Alonso',
    podiums: '97',
    wins: '32',
    fastestLap: '23',
    gpEntered: '323',
    worldchampionships: '2',
    driverImageUrl: 'assets/images/FernandoAlonso_img.png',
    teamImageUrl: 'assets/images/Alpine_img.png',
    teamCarUrl: 'assets/images/Alpine_car.png',
    carousel: pictureCarousels[0].image1url,
    biography:
    "Michael Schumacher was the undisputed king of Formula 1 in the early 2000s, picking up wins and championships at a rate that was simply unheard of at the time. It was going to take someone very special to topple the Ferrari legend from his throne – and that it was Fernando Alonso who did it, tells you all you need to know about the Spaniard.\n\n"
    "Fiercely competitive, Alonso is not shy about his talent, rating himself as 9/10 “in everything”, and few in the know would disagree, with his performances in F1 characterised by blistering speed, brilliant tactical thinking, exemplary race craft, a razor-sharp eye for detail and a relentless determination to win.\n\n"
    "A serial record breaker in his day, he was – at one time – F1’s youngest polesitter, race winner, world champion and double world champion as he gobbled up success with the Renault team. Even Alonso couldn’t continue that amazing run in his later career though, failing to add another title to his collection despite spells at McLaren and Ferrari.\n\n"
    "But after two years away from Formula 1 racing – and now with two Le Mans wins in his pocket – Alonso is back with Alpine in 2021. And he has unfinished business with F1…",
    image1url: 'assets/images/FernandoAlonso1.jpg',
    image2url: 'assets/images/FernandoAlonso2.jpg',
    image3url: 'assets/images/FernandoAlonso3.jpg',
    image4url: 'assets/images/FernandoAlonso4.jpg',
    image5url: 'assets/images/FernandoAlonso5.jpg',
    image6url: 'assets/images/FernandoAlonso6.jpg',
  ),
  Driver(
    name: 'Lance Stroll',
    rank: '12',
    team: 'Aston Martin',
    points: '14',
    color: Colors.green[900],
    number: '18',
    firstName: 'Lance ',
    lastName: 'Stroll',
    podiums: '3',
    wins: '0',
    fastestLap: '0',
    gpEntered: '87',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/LanceStroll_img.png',
    teamImageUrl: 'assets/images/AstonMartinRacing_img.png',
    teamCarUrl: 'assets/images/AstonMartin_car.png',
    carousel: pictureCarousels[0].image1url,
    biography: 
    "There is no such thing as too much too soon for Stroll, a teenage sensation with a wet weather predilection. One of the cool kids on the grid, Stroll was unveiled shortly after his 18th birthday by Williams – before he finished high school and got his road licence. \n\n"
    "Stroll meant business in his debut 2017 season, setting records on the way. An opportunistic racer he bounded onto the podium in Baku, the youngest rookie to do so. As the son of a wealthy entrepreneur, Stroll is used to a champagne lifestyle but now he knows the fizz tastes all the sweeter on the rostrum. Then in Monza he mastered the downpours to become the youngest driver in history to line up on the front row.",
    image1url: 'assets/images/LanceStroll1.jpg',
    image2url: 'assets/images/LanceStroll2.jpg',
    image3url: 'assets/images/LanceStroll3.jpg',
    image4url: 'assets/images/LanceStroll4.jpg',
    image5url: 'assets/images/LanceStroll5.jpg',
    image6url: 'assets/images/LanceStroll6.jpg',
  ),
  Driver(
    name: 'Esteban Ocon',
    rank: '13',
    team: 'Alpine',
    points: '12',
    color: Colors.lightBlue,
    number: '31',
    firstName: 'Esteban Ocon ',
    lastName: 'Perez',
    podiums: '1',
    wins: '0',
    fastestLap: '0',
    gpEntered: '76',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/EstebanOcon_img.png',
    teamImageUrl: 'assets/images/Alpine_img.png',
    teamCarUrl: 'assets/images/Alpine_car.png',
    carousel: pictureCarousels[0].image1url,
    biography: 
    "If there’s one word that dominates Esteban Ocon’s career, it’s ‘sacrifice’.\n\n"
    "Back when he was just a promising karter, Ocon’s parents sold their house, put their jobs on hold, and began a life on the road, living in a caravan and travelling from circuit to circuit to support their son’s burgeoning career.\n\n"
    "Sacrifice, see – but it worked. 2014 saw Ocon break through in the world of single-seaters, as he beat a certain Max Verstappen to the European F3 title. Backed by Mercedes, he won the GP3 title the following year and was halfway through a season of DTM in 2016 when he was offered the chance to replace Rio Haryanto at the minnow Manor team from the Belgian Grand Prix onwards.\n\n"
    "That opportunity led to a full-time seat the following year with Force India, where his wheel-to-wheel duels with highly-rated team mate Sergio Perez quickly marked him out as a rising star. But when Lawrence Stroll, father of racer Lance, stepped in midway through 2018 to secure the squad’s financial future, the writing was on the wall for Ocon, who was moved aside at the end of the year to allow Stroll Jnr to join from Williams.\n\n"
    "Ocon bided his time, though, and after a year on the sidelines as Mercedes’ reserve driver, he found his way back into a race seat with Renault in 2020. Nothing in Ocon’s motorsport career has come easy – but if Ocon has managed to return to the F1 grid, it’s through a combination of self-belief, determination and a talent that’s up there with the very best.",
    image1url: 'assets/images/EstebanOcon1.jpg',
    image2url: 'assets/images/EstebanOcon2.jpg',
    image3url: 'assets/images/EstebanOcon3.jpg',
    image4url: 'assets/images/EstebanOcon4.jpg',
    image5url: 'assets/images/EstebanOcon5.jpg',
    image6url: 'assets/images/EstebanOcon6.jpg',
  ),
  Driver(
    name: 'Yuki Tsunoda',
    rank: '14',
    team: 'AlphaTauri',
    points: '9',
    color: Colors.grey[900],
    number: '22',
    firstName: 'Yuki ',
    lastName: 'Tsunoda',
    podiums: '0',
    wins: '0',
    fastestLap: '0',
    gpEntered: '9',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/YukiTsunoda_img.png',
    teamImageUrl: 'assets/images/Alphatauri_img.png',
    teamCarUrl: 'assets/images/AlphaTauri_car.png',
    carousel: pictureCarousels[0].image1url,
    biography: 
    "In the entire history of Formula 1, no Japanese driver has ever won a World Championship Grand Prix. Could Yuki Tsunoda be the first? Red Bull certainly think so, with the youngster very much on the path to their senior team if he continues to impress as he has done over the past few years.\n\n"
    "Tsunoda's ascent to the top tier of motorsport has been astonishingly rapid: he’s gone from racing in Japanese F4 to a Formula 1 seat with AlphaTauri in just over three years, having arrived in Europe in 2019 with no knowledge of the circuits.\n\n"
    "But after a slow start in F3, followed by a hugely impressive debut F2 campaign that saw him finish third in the championship and pick up three wins along the way, Tsunoda proved he had the speed and the race craft to force his way on to the F1 grid.\n\n"
    "And if he adapts to Grand Prix racing as quickly as he did to F2, it might not be long before he finds himself battling at the very sharp end in a Red Bull.",
    image1url: 'assets/images/YukiTsunoda1.jpg',
    image2url: 'assets/images/YukiTsunoda2.jpg',
    image3url: 'assets/images/YukiTsunoda3.jpg',
    image4url: 'assets/images/YukiTsunoda4.jpg',
    image5url: 'assets/images/YukiTsunoda5.jpg',
    image6url: 'assets/images/YukiTsunoda6.jpg',
  ),
  Driver(
    name: 'Kimi Räikkönen',
    rank: '15',
    team: 'Alfa Romeo Racing',
    points: '1',
    color: Colors.red[900],
    number: '7',
    firstName: 'Kimi  ',
    lastName: 'Räikkönen',
    podiums: '103',
    wins: '21',
    fastestLap: '46',
    gpEntered: '341',
    worldchampionships: '1',
    driverImageUrl: 'assets/images/KimiRaikonen_img.png',
    teamImageUrl: 'assets/images/AlfaRomeo_img.png',
    teamCarUrl: 'assets/images/AlfaRomeoRacing_car.png',
    carousel: pictureCarousels[0].image1url,
    biography: 
    "He’s the world-famous racing driver who just wants to be left alone. \n\n"
    "Raikkonen has a cult status in F1 like no other driver of his generation, but if you ask him why he just shrugs.\n\n"
    "Maybe it’s because of the rugged, raw talent that inspired Sauber to give him his debut in 2001 – and re-sign him for 2019. Or the fast and fearless racing that led to memorable McLaren wins. Or the never-say-die attitude that clinched the 2007 world title for Ferrari by a single point. Or maybe it’s because this is the ‘Iceman’ who jumped straight into a Jacuzzi on his yacht after retiring in Monaco and who enjoyed an ice cream when a soggy Malaysian GP was red-flagged but still live.\n\n"
    "Raikkonen literally does his talking on track. Out of the car, the Finn is famously taciturn. Although those who know him well say privately he is an amusing bon viveur, as well as a devoted family man.\n\n"
    "Meanwhile, his legions of loyal fans have to rely on revelations in his radio transmissions. And maybe Raikkonen himself best summed up the enigma of the Iceman when he said on the airwaves: “Leave me alone, I know what I’m doing.",
    image1url: 'assets/images/KimiRaikkonen1.jpg',
    image2url: 'assets/images/KimiRaikkonen2.jpg',
    image3url: 'assets/images/KimiRaikkonen3.jpg',
    image4url: 'assets/images/KimiRaikkonen4.jpg',
    image5url: 'assets/images/KimiRaikkonen5.jpg',
    image6url: 'assets/images/KimiRaikkonen6.jpg',
  ),
  Driver(
    name: 'Antonio Giovinazzi',
    rank: '16',
    team: 'Alfa Romeo Racing',
    points: '1',
    color: Colors.red[900],
    number: '99',
    firstName: 'Antonio  ',
    lastName: 'Giovinazzi',
    podiums: '0',
    wins: '0',
    fastestLap: '0',
    gpEntered: '49',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/AntonioGiovinazzi_img.png',
    teamImageUrl: 'assets/images/AlfaRomeo_img.png',
    teamCarUrl: 'assets/images/AlfaRomeoRacing_car.png',
    carousel: pictureCarousels[0].image1url,
    biography: 
    "He’s the Italian steed with speed from the stable of the Prancing Horse. Antonio Giovinazzi flies the flag for Italy as the motorsport mad nation champs at the bit for its next F1 star.\n\n"
    "The pilota from Puglia can punch his way through the pack and pull off a plucky pass. He showcased this natural racing acumen during a blistering 2016 GP2 campaign where he finished a close runner-up to team mate Pierre Gasly.\n\n"
    "Giovinazzi concedes he went from hero to zero after two races as a stand-in for Sauber in 2017 when a brilliantly composed F1 debut in Melbourne was followed by two shunts in Shanghai. But a stint as Ferrari reserve gave him time to re-group and reflect ahead of his first full season in 2019, paired alongside Kimi Raikkonen at Alfa Romeo.\n\n"
    "The notion of a home-grown racer with the iconic Alfa Romeo brand is irresistible to many – and Giovinazzi has laid claim to being the Italian for the job, after he out-qualified Raikkonen across the course of the 2020 season.\n\n"
    "Now his challenge is to out-race the Iceman…",
    image1url: 'assets/images/AntonioGiovinazzi1.jpg',
    image2url: 'assets/images/AntonioGiovinazzi2.jpg',
    image3url: 'assets/images/AntonioGiovinazzi3.jpg',
    image4url: 'assets/images/AntonioGiovinazzi4.jpg',
    image5url: 'assets/images/AntonioGiovinazzi5.jpg',
    image6url: 'assets/images/AntonioGiovinazzi6.jpg',
  ),
  Driver(
    name: 'George Russel',
    rank: '17',
    team: 'Williams',
    points: '0',
    color: Colors.blue[700],
    number: '63',
    firstName: 'George  ',
    lastName: 'Russel',
    podiums: '0',
    wins: '0',
    fastestLap: '0',
    gpEntered: '47',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/GeorgeRussel_img.png',
    teamImageUrl: 'assets/images/Williams_img.png',
    teamCarUrl: 'assets/images/Williams_car.png',
    carousel: pictureCarousels[0].image1url,
    biography: 
    "He’s the driver with the motto: “If in doubt, go flat out”.\n\n"
    "George Russell has lived by it in his F1 career to date, out-qualifying seasoned team mate Robert Kubica at all 21 Grands Prix in his rookie season, and repeating the feat against Nicolas Latifi in 2020 - and proving Williams right in identifying him as a hard worker and a tenacious talent.\n\n"
    "That brilliant baseline speed served Russell well as he totted up titles on his way to Formula 1. The Briton stormed to the 2017 GP3 championship and delivered the 2018 Formula 2 crown under immense pressure.\n\n"
    "Spotting his potential, world champions Mercedes swooped to sign him to their junior programme in 2017, when Russell already had a DTM deal on the table. He banked more experience with practice sessions with Force India and tests for the Silver Arrows, before landing his Mercedes-powered Williams race drive.\n\n"
    "A refusal to cede ground to his rivals - and commitment to a tricky pass – underpins Russell’s winning mentality. And it’s what got him the call-up to replace Lewis Hamilton for a one-off Mercedes appearance for Sakhir 2020 when the reigning champ was struck down by Covid-19.\n\n"
    "That star turn saw Russell miss out on pole by just 0.026s and then outrace Mercedes stalwart Valtteri Bottas. Only a bungled pit stop and a heart-breaking late puncture prevented a near-certain maiden win for the up-and-coming super-sub.\n\n"
    "And though he’s yet to score a point with Williams, he wants to put that right in 2021 – all the while keeping his eye on the bigger prize of a top-team drive in the future.\n\n"
    "As always, ‘Russell the Rocket’ will be going flat out.",
    image1url: 'assets/images/GeorgeRussel1.jpg',
    image2url: 'assets/images/GeorgeRussel2.jpg',
    image3url: 'assets/images/GeorgeRussel3.jpg',
    image4url: 'assets/images/GeorgeRussel4.jpg',
    image5url: 'assets/images/GeorgeRussel5.jpg',
    image6url: 'assets/images/GeorgeRussel6.jpg',
  ),
  Driver(
    name: 'Mick Schumacher',
    rank: '18',
    team: 'Haas F1 Team',
    points: '0',
    color: Colors.grey[400],
    number: '47',
    firstName: 'Mick  ',
    lastName: 'Schumacher',
    podiums: '0',
    wins: '0',
    fastestLap: '0',
    gpEntered: '9',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/MickSchumacher_img.png',
    teamImageUrl: 'assets/images/Williams_img.png',
    teamCarUrl: 'assets/images/Haas_car.png',
    carousel: pictureCarousels[0].image1url,
    biography: 
    "Plenty of sons of former F1 drivers have joined the sport over the years – two have even emulated their fathers to become world champions – but carrying the Schumacher name is surely an extra level of pressure for Mick, given his father Michael’s extraordinary achievements in Formula 1.\n\n"
    "But Schumacher Junior, a member of the Ferrari Driver Academy, arrives in F1 with Haas after clinching the F2 title in 2020, to add to the F3 championship he won in 2018 – so there is zero suggestion he has been elevated to the top level of motorsport because of his name. \n\n"
    "It’s talent that has brought him this far and he will need to show more of the same as he acclimatises to F1, if he is to one day follow in his father’s footsteps and claim a race seat with the Scuderia.",
    image1url: 'assets/images/MickSchumacher1.jpg',
    image2url: 'assets/images/MickSchumacher2.jpg',
    image3url: 'assets/images/MickSchumacher3.jpg',
    image4url: 'assets/images/MickSchumacher4.jpg',
    image5url: 'assets/images/MickSchumacher5.jpg',
    image6url: 'assets/images/MickSchumacher6.jpg',
  ),
  Driver(
    name: 'Nikita Mazepin',
    rank: '19',
    team: 'Haas F1 Team',
    points: '0',
    color: Colors.grey[400],
    number: '9',
    firstName: 'Nikita  ',
    lastName: 'Mazepin',
    podiums: '0',
    wins: '0',
    fastestLap: '0',
    gpEntered: '9',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/NikitaMazepin_img.png',
    teamImageUrl: 'assets/images/Haas_img.png',
    teamCarUrl: 'assets/images/Haas_car.png',
    carousel: pictureCarousels[0].image1url,
    biography: 
    "Nikita Mazepin might be bringing a healthy chunk of budget with him to the Haas team, but don’t be fooled into thinking he hasn’t also got the driving chops to go with it.\n\n"
    "The Russian – the fourth to compete in F1 after Vitaly Petrov, Sergey Sirotkin and Daniil Kvyat – has an impressive CV in the junior formulas, finishing runner-up in the 2018 GP3 championship with four race wins.\n\n"
    "And after taking his time to find his feet in his first season of F2 in 2019, he came into his own in 2020, notching up six podiums – including two victories – on his way to fifth in the standings.\n\n"
    "Haas boss Guenther Steiner has described Mazepin as a “mature racer” and he is likely to need all that maturity in 2021 as he drives for the American team in motorsport’s top tier.",
    image1url: 'assets/images/NikitaMazepin1.jpg',
    image2url: 'assets/images/NikitaMazepin2.jpg',
    image3url: 'assets/images/NikitaMazepin3.jpg',
    image4url: 'assets/images/NikitaMazepin4.jpg',
    image5url: 'assets/images/NikitaMazepin5.jpg',
    image6url: 'assets/images/NikitaMazepin6.jpg',
  ),
  Driver(
    name: 'Nicholas Latifi',
    rank: '20',
    team: 'Williams',
    points: '0',
    color: Colors.blue[700],
    number: '6',
    firstName: 'Nicholas ',
    lastName: 'Latifi',
    podiums: '0',
    wins: '0',
    fastestLap: '0',
    gpEntered: '26',
    worldchampionships: '0',
    driverImageUrl: 'assets/images/NicholasLatiffi_img.png',
    teamImageUrl: 'assets/images/Williams_img.png',
    teamCarUrl: 'assets/images/Williams_car.png',
    carousel: pictureCarousels[0].image1url,
    biography: 
    "Thirteen is an advanced age to begin your karting career these days. But that’s how old Toronto native Nicholas Latifi was when he took his first steps in motorsport. Just 11 years later, he became a fully-fledged Formula 1 driver.\n\n"
    "That ascension into racing's top category was largely thanks to his most impressive season to date in Formula 2 in 2019, with Latifi – who’d finished a disappointing ninth in the series’ 2018 standings – pulling up his bootstraps to claim second in the championship. That result, combined with the Williams/Robert Kubica union failing to mesh in 2019, meant Williams made the call to promote their affable Canadian reserve driver to a full-time drive alongside George Russell for 2020.\n\n"
    "Latifi’s first taste of F1 machinery actually came all the way back in 2017, when he was given a test by Renault. Further duties with Force India followed in 2018 before he joined the Williams family in 2019. It was an annus horribilis for the squad, no doubt – but Latifi’s straightforward, friendly attitude and insightful feedback helped swing the vote in his favour for 2020.\n\n"
    "Now, after a rookie season living in Russell’s shadow, the goal is to show that that his eye-catching F2 year wasn’t just a fluke, and prove that he really has got what it takes to mix it with the best drivers in the world.",
    image1url: 'assets/images/NicholasLatiffi1.jpg',
    image2url: 'assets/images/NicholasLatiffi2.jpg',
    image3url: 'assets/images/NicholasLatiffi3.jpg',
    image4url: 'assets/images/NicholasLatiffi4.jpg',
    image5url: 'assets/images/NicholasLatiffi5.jpg',
    image6url: 'assets/images/NicholasLatiffi6.jpg',
  ),
];