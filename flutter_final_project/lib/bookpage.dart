import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_final_project/bookclass.dart';
//import 'package:url_launcher/url_launcher.dart';

class bookpage extends StatefulWidget {
  @override
  State<bookpage> createState() => _bookpageState();
}

class _bookpageState extends State<bookpage> {
  var varo = 'galdcdc';
  var book = [
    books(
        name: 'Art of War',
        image:
            'https://m.media-amazon.com/images/I/81kB6lKq1aL._AC_UY436_QL65_.jpg',
        des:
            "The Art of War (Chinese: 孫子兵法; lit. 'Sun Tzu's Military Method', pinyin: Sūnzǐ bīngfǎ) is an ancient Chinese military treatise dating from the Late Spring and Autumn Period (roughly 5th century BC). The work, which is attributed to the ancient Chinese military strategist Sun Tzu ('Master Sun'), is composed of 13 chapters. Each one is devoted to a different set of skills or art related to warfare and how it applies to military strategy and tactics",
        link:
            'https://www.amazon.com/Art-War-AmazonClassics-Sun-Tzu-ebook/dp/B073QR86XF/ref=sr_1_1?crid=2XTOGHA7XDVLQ&keywords=art+of+war&qid=1694578488&sprefix=Art+o%2Caps%2C335&sr=8-1'),
    books(
        name: "LLC Beginner's Guide'",
        image: 'https://m.media-amazon.com/images/I/71LVY35HFPL._SY522_.jpg',
        des:
            "Starting an LLC offers a wide range of benefits to business owners, such as liability protection and tax advantages, but unfortunately, the process can be tricky. From the intimidating paperwork and legal jargon to the confusing requirements, it’s easy to get overwhelmed – and worst of all, it’s easy to get things wrong.",
        link:
            'https://www.amazon.com/Beginners-Guide-Updated-Easy-Follow/dp/B0BKXJ5S3Z/ref=sr_1_1?qid=1694579191&s=books&sr=1-1'),
    books(
        name:
            'HTML5, CSS3, and JavaScript: 15 Years of Experience in Your Hand (Web Development Crash Course)',
        image: 'https://m.media-amazon.com/images/I/71tGBuuITnL._SY522_.jpg',
        des:
            'Improve your web development and design skills with "HTML5, CSS3, and JavaScript: 15 Years of Experience in Your Hand". This all-in-one book combines the power of HTML5, CSS3, and JavaScript, providing you with the knowledge and expertise to create stunning, responsive, and interactive websites that stand out in today "s competitive online landscape."',
        link:
            'https://www.amazon.com/HTML5-CSS3-JavaScript-Experience-Development-ebook/dp/B0BNNGLDF6/ref=sr_1_2_sspa?qid=1694579350&s=books&sr=1-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGZfYnJvd3Nl&psc=1')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: book.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                book[index].image,
              ),
              title: Text(
                book[index].name,
                style: TextStyle(fontSize: 10),
              ),
              subtitle: Text(
                book[index].des,
                style: TextStyle(fontSize: 10),
              ),
              trailing: IconButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: book[index].link));
                  },
                  icon: Icon(Icons.copy)),
            );
          },
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 217, 208, 208),
    );
  }
}
