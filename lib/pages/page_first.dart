import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  static const route = "/page_one";
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  String title = "Keanu Reeves";

  int count = 0;

  var text = const Text(
    "Keanu Charles Reeves (was born September 2, 1964) is a Canadian[c] actor. Born in Beirut and raised in Toronto, he made his acting debut in the Canadian television series Hangin' In (1984), before making his feature film debut in Youngblood (1986). Reeves had his breakthrough role in the science fiction comedy Bill & Ted's Excellent Adventure (1989), and he reprised his role in its sequels. He gained praise for playing a hustler in the independent drama My Own Private Idaho (1991) and established himself as an action hero with leading roles in Point Break (1991) and Speed (1994).",
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w800,
    ),
  );

  String netvorkStr =
      "https://media.newyorker.com/photos/5cf5728d47f7cc877a506d9b/1:1/w_1765,h_1765,c_limit/Fry-KeanuReeves-2.jpg";

  @override
  void initState() {
    debugPrint("Open Favourite people pages ");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.tealAccent,
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: "Agbalumo",
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sentiment_satisfied_alt,
                size: 34,
              )),
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(30),
              right: Radius.circular(30),
            ),
            side: BorderSide(color: Colors.black, width: 2)),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Text(
            "About",
            style: TextStyle(fontFamily: "Kenia", fontSize: 15),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.network(
              netvorkStr,
              width: 450,
              height: 300,
              // fit: BoxFit.fill,
            ),
            text,
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
                if(count>7){
                  debugPrint("state tugadi");
                }
                netvorkStr = images(count);
                text = Text(
                  textes(count),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                );
                title = titleAppBar(count);
              });
            },
            child: const Icon(
              CupertinoIcons.add_circled,
              size: 40,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count--;
                if(count<0){
                  debugPrint("state tugadi");
                }
                netvorkStr = images(count);
                text = Text(
                  textes(count),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                );
                title = titleAppBar(count);
              });
            },
            child: const Icon(
              CupertinoIcons.minus_circled,
              size: 40,
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

String images(int count) {
  Map<int, String> images = {
    0: "https://media.newyorker.com/photos/5cf5728d47f7cc877a506d9b/1:1/w_1765,h_1765,c_limit/Fry-KeanuReeves-2.jpg",
    1: "https://live.staticflickr.com/65535/51761311645_3ee3258fcf_b.jpg",
    2: "https://media.kvue.com/assets/CCT/images/e1a3e6d0-c1e0-4039-8966-e383cb1dda29/e1a3e6d0-c1e0-4039-8966-e383cb1dda29_1140x641.jpg",
    3: "https://filmfare.wwmindia.com/content/2023/may/chrishemsworththor41684827938.jpg",
    4: "https://media.glamour.com/photos/6489c93ac651730826b8595e/4:3/w_2232,h_1674,c_limit/GettyImages-1358259452.jpg",
    5: "https://deadline.com/wp-content/uploads/2023/06/tom-holland-spider-man-4.jpg?w=681&h=383&crop=1",
    6: "https://s3.india.com/wp-content/uploads/2023/07/WhatsApp-Image-2023-07-18-at-7.48.15-PM.jpeg",
    7: "https://www.helloleads.io/blog/wp-content/uploads/2022/04/s2.jpg",
  };
  return images[count]!;
}

String textes(int count) {
  Map<int, String> text = {
    0: r"Keanu Charles Reeves (was born September 2, 1964) is a Canadian[c] actor. Born in Beirut and raised in Toronto, he made his acting debut in the Canadian television series Hangin' In (1984), before making his feature film debut in Youngblood (1986). Reeves had his breakthrough role in the science fiction comedy Bill & Ted's Excellent Adventure (1989), and he reprised his role in its sequels. He gained praise for playing a hustler in the independent drama My Own Private Idaho (1991) and established himself as an action hero with leading roles in Point Break (1991) and Speed (1994).",
    1: r"Following several box office failures, Reeves's performance in the horror film The Devil's Advocate (1997) was well received. Greater stardom came for playing Neo in the science fiction series The Matrix, beginning in 1999. He played John Constantine in Constantine (2005) and starred in the romantic drama The Lake House (2006), the science fiction thriller The Day the Earth Stood Still (2008), and the crime thriller Street Kings (2008). Following another ",
    2: r"Christopher Hemsworth AM (born 11 August 1983) is an Australian actor. He rose to prominence playing Kim Hyde in the Australian television series Home and Away (2004–2007) before beginning a film career in Hollywood. In the Marvel Cinematic Universe (MCU), Hemsworth started playing Thor with the 2011 film of the same name and most recently reprised the role in Thor: Love and Thunder (2022), which established him among the world's highest-paid actors.[1][2]",
    3: r"In 2011, Sony Pictures announced that Hemsworth would star in the thriller Shadow Runner,[24] but the film has yet to go into production. That same year, Hemsworth was cast as the superhero Thor in the Marvel Cinematic Universe. His first film in the franchise was 2011's Thor. He and castmate Tom Hiddleston, who ultimately played Loki, had each auditioned for the role, for which Hemsworth said he gained 20 pounds of muscle.[25] With a worldwide gross of US$449.3 million,[26] Thor was the 15th highest-grossing film of 2011.[27] The film received positive reviews,[28] and Hemsworth's portrayal of the God of Thunder was praised by Kenneth Turan of the Los Angeles Times.[29] Hemsworth reprised the role the following year for the film The Avengers (2012) as one of the six superheroes—alongside Robert Downey Jr.'s Tony Stark / Iron Man, Chris Evans' Steve Rogers / Captain America, Mark Ruffalo's Bruce Banner / Hulk, Scarlett Johansson's Natasha Romanova / Black Widow, and Jeremy Renner's Clint Barton / Hawkeye—sent to defend Earth from his adopted brother, Loki.[30] The film was a critical[31] and commercial success, grossing over US$1.5 billion worldwide.[32] The ensemble cast was praised ",
    4: r"Thomas Stanley Holland (born 1 June 1996) is an English actor. His accolades include a British Academy Film Award and three Saturn Awards. Some publications have called him one of the most popular actors of his generation.[a] Holland's career began at age nine when he enrolled in a dancing class, where a choreographer noticed him and arranged for him to audition for a role in Billy Elliot the Musical at London's Victoria Palace Theatre. After two years of training, he secured a supporting part in 2008 and was upgraded to the title role that year, which he played until 2010. Holland made his film debut in the disaster drama The Impossible (2012) as a teenage tourist trapped in a tsunami, for which he received praise.",
    5: r"Holland appeared in four episodes of BBC Two's historical miniseries Wolf Hall (2015), as Gregory Cromwell, son of the protagonist Thomas Cromwell played by Mark Rylance.[40] He directed Tweet (2015), a 3-minute short film about a young man building a birdhouse with his grandfather;[28] Holland later expressed an interest in directing feature films in his 40s.[13] Also in 2015, Holland co-starred as the teenage sailor Thomas Nickerson in Ron Howard's historical adventure-drama In the Heart of the Sea. The film is based on the namesake 2000 non-fiction book about the sinking of the American whaling ship Essex in 1820. In preparation, he and co-stars, including Chris Hemsworth, lost significant weight, consuming 500–1,000 calories a day. Holland performed most of his stunts in the film.[41] In the Heart of the Sea received mixed reviews from critics, and grossed $93 million against a $100 million budget.[42][43] Brian Truitt of the USA Today wrote that Holland .[44]",
    6: r"Steven Paul Jobs (February 24, 1955 – October 5, 2011) was an American businessman who was the co-founder, chairman, and CEO of Apple; the chairman and majority shareholder of Pixar; a member of The Walt Disney Company's board of directors following its acquisition of Pixar; and the founder, chairman, and CEO of NeXT. He was a pioneer of the personal computer revolution of the 1970s and 1980s, along with his early business partner and fellow Apple co-founder Steve Wozniak.",
    7: "In February 1974, Jobs returned to his parents' home in Los Altos and began looking for a job.[43] He was soon hired by Atari, Inc. in Los Gatos, California, as a computer technician.[43][44] Back in 1973, Steve Wozniak designed his own version of the classic video game Pong and gave its electronics board to Jobs. According to Wozniak, Atari only hired Jobs because he took the board down to the company, and they thought that he had built it himself.[45] Atari's cofounder Nolan Bushnell later described him as 'difficult but valuable', pointing out that 'he was very often the smartest guy in the room, and he would let people know that'.[46]",
  };

  return text[count]!;
}

String titleAppBar(int count) {
  Map<int, String> title = {
    0: "Keanu Reeves",
    1: "Keanu Reeves",
    2: "Chris Hemsworth",
    3: "Chris Hemsworth",
    4: "Tom Holland",
    5: "Tom Holland",
    6: "Steve Jobs",
    7: "Steve Jobs",
  };

  return title[count]!;
}
