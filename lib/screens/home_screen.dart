import 'package:coba_project/models/job_model.dart';
import 'package:coba_project/screens/job_screen.dart';
import 'package:coba_project/widgets/bottom_navbar.dart';
import 'package:coba_project/widgets/feature_job_widget.dart';
import 'package:coba_project/widgets/header_bar.dart';
import 'package:coba_project/widgets/popular_job_card.dart';
import 'package:coba_project/widgets/recommemd_job_card.dart';
import 'package:coba_project/widgets/seach_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<JobModel> jobsList = [
    JobModel(
      job: 'Product Manager',
      company: 'Google',
      companyIcon: FontAwesomeIcons.google,
      salary: 160,
      address: 'California, USA',
      bannerColor: Color.fromARGB(204, 11, 31, 2),
      description:
          "Google is one of the leading technology companies in the world, founded by Larry Page and Sergey Brin in 1998 while they were still students at Stanford University. The company has grown into a global tech giant known for its Google search engine, which is the most widely used web search tool in the world. In addition to the search engine, Google offers various other products and services, including the Android mobile operating system, the Chrome web browser, productivity applications like Google Docs, and many more. One distinctive feature of Google is its innovative company culture. Google is known for granting creative freedom to its employees and encouraging innovation. The company is also famous for its comfortable and employee-friendly work facilities, such as futuristic offices, recreational amenities, and flexible work policies. Google is also committed to environmental sustainability and has invested in renewable energy and reducing its carbon footprint. Google is not just a technology company but also plays a role in the development of various philanthropic projects and initiatives. Google.org, Google's philanthropic arm, has supported various projects focusing on addressing social and environmental issues, including education, internet access, and environmental preservation. With its diverse products, innovative company culture, and commitment to social responsibility, Google continues to be a leader in the global technology industry.",
      requirements:
          "Position Product Manager at Google is a critical role in overseeing the development of the company's products and strategies. A Product Manager at Google is expected to have a deep understanding of the technology market and the ability to identify new opportunities that can strengthen Google's position in the industry. The ideal candidate should have at least five years of experience in product management or business development at leading technology companies. Additionally, they should have strong analytical skills to interpret market and user data and the ability to formulate and execute innovative business plans. A Product Manager at Google is expected to have exceptional leadership and team management skills. They must be able to provide clear direction to product developers and engineers, as well as inspire collaboration and innovation within the group. Successful candidates must have excellent communication skills, both oral and written, to work effectively with diverse cross-functional teams across the company. The ability to work efficiently in a rapidly changing environment while considering user preferences, market trends, and the latest technological developments is crucial in this role. Furthermore, a Product Manager at Google is expected to have a clear vision of the strategic direction of Google's products in the future. They must be able to formulate long-term plans that will enable Google to remain a market leader in various sectors. Successful candidates will have a proven track record in planning and managing product lifecycles, from conceptualization to launch and iteration. The ability to adapt quickly to market changes and lead strategic changes to anticipate future trends will be an added advantage.",
    ),
    JobModel(
      job: 'UI Designer',
      company: 'Dribbble',
      companyIcon: FontAwesomeIcons.dribbble,
      salary: 100,
      address: 'California, USA',
      bannerColor: Color.fromARGB(204, 14, 43, 2),
      description:
          "Dribbble Company is a firm that has established a strong reputation in the world of design and creativity. The company is focused on an online platform that enables designers, artists, and other creatives to showcase their work to the world. Dribbble has a highly active community, consisting of millions of members scattered across the globe. Dribbble's members can post their designs, receive feedback from fellow members, and even potentially secure jobs or collaborative projects through the platform. One of the things that sets Dribbble Company apart is the high quality of designs showcased on its platform. With limitations on the number of daily posts, every work published on Dribbble tends to uphold high standards in terms of aesthetics and creativity. This makes Dribbble a highly sought-after space for designers looking to expand their network, find inspiration, or exhibit their portfolios to a global audience. Dribbble also serves as a valuable resource for companies and employers seeking talent in the design field. They can explore designer profiles, view recent works, and reach out to individuals or teams that may be a good fit for their projects. Dribbble has become an essential bridge between designers and potential clients, facilitating productive collaborations and the creation of outstanding works in the realms of graphic design and digital creativity.",
      requirements:
          "For the UI Designer position in the concept of a job finder on the Telegram Dribbble platform, there are several key requirements to consider. First, a successful UI Designer here must have a deep understanding of user interface (UI) design and a strong working experience in creating visually appealing and functional user interfaces. They must also have the ability to design intuitive and efficient user flows to help users navigate seamlessly through the job finder platform. Next, a UI Designer applying for this position should be skilled in using design tools such as Adobe XD, Sketch, Figma, or similar tools. They should have a strong portfolio that reflects their UI design skills, including front-end page designs, user profiles, job search, and job detail pages that will enhance the user experience in job searching. Finally, the ability to collaborate with the development team and a basic understanding of web or mobile app development is a plus. Proficiency in responsive design and an understanding of UX (User Experience) principles are also highly necessary to ensure that the Telegram Dribbble platform provides an optimal and effective job searching experience for users. By meeting all of these requirements, a UI Designer can play a key role in developing and enhancing the job searching experience on Telegram Dribbble.",
    ),
    JobModel(
      job: 'Front-end Developer',
      company: 'Shopify',
      companyIcon: FontAwesomeIcons.shopify,
      salary: 80,
      address: 'California, USA',
      bannerColor: Color.fromARGB(204, 14, 43, 2),
      description:
          "Shopify is a technology e-commerce company headquartered in Ottawa, Canada. Founded in 2006 by Tobias Lütke, Daniel Weinand, and Scott Lake, Shopify has grown into one of the largest e-commerce platforms in the world. Shopify allows individuals and businesses, both small and large, to easily create their own online stores without requiring in-depth technical knowledge. With a variety of features, including payment processing, inventory management, and online marketing, Shopify has become one of the top choices for merchants looking to build and manage their online stores. In addition to providing an e-commerce platform, Shopify also offers a variety of additional services and tools. One of them is Shopify Payments, which enables merchants to manage payment transactions with ease. Furthermore, the Shopify App Store hosts thousands of additional applications that can be used to customize and expand online stores, as well as analytical tools that help merchants understand their customers' behavior. Shopify's success is also reflected in its rapid growth. The company has attracted thousands of customers worldwide and has become a top choice for small, medium, and large businesses seeking a reliable and user-friendly e-commerce solution. Shopify has helped various types of businesses expand their reach, increase sales, and streamline their e-commerce processes.",
      requirements:
          "The ideal front-end developer for the Shopify-Telegram integration project should possess a strong foundation in web development technologies. Proficiency in HTML, CSS, and JavaScript is essential, as well as experience with popular front-end frameworks like React or Vue.js. Familiarity with the Shopify ecosystem and the Telegram API is a plus. The candidate should be capable of designing and implementing user-friendly and responsive interfaces that seamlessly connect Shopify's e-commerce functionalities with Telegram's messaging platform. Attention to detail and the ability to troubleshoot and debug issues are vital skills to ensure a smooth user experience. The candidate must have the expertise to bridge the gap between two diverse platforms - Shopify and Telegram. They should be able to design and implement solutions that enable businesses to manage their e-commerce operations directly within the Telegram messaging app. This requires a deep understanding of both Shopify's APIs and the Telegram Bot API to create a seamless user experience. The developer should be able to build custom dashboards, interactive product listings, and streamlined checkout processes that align with the branding and functionality of Shopify while being accessible within the Telegram environment. Maintaining the security and data privacy of the Shopify-Telegram integration is of utmost importance. The developer should have experience implementing secure authentication methods, encrypting sensitive data, and ensuring data transfer between the platforms is protected. A strong understanding of OAuth, HTTPS, and other security measures is required to safeguard user information. Compliance with data protection regulations and best practices, such as GDPR and PCI DSS, is essential. Additionally, the developer should be aware of potential security vulnerabilities and stay up-to-date with security patches and updates to maintain a safe shopping environment for users.",
    ),
    JobModel(
      job: 'Back-end Developer',
      company: 'Telegram',
      companyIcon: FontAwesomeIcons.telegram,
      salary: 96,
      address: 'California, USA',
      bannerColor: Color.fromARGB(204, 14, 43, 2),
      description:
          "Telegram is a technology company famous for its globally popular instant messaging application. Founded in 2013 by Pavel Durov, a Russian entrepreneur, Telegram has grown into one of the largest communication platforms in the world, with over 500 million monthly active users as of my knowledge cutoff date in September 2021. The Telegram app allows users to send text messages, photos, videos, and other files quickly and securely across various devices, including smartphones, tablets, and computers. One of Telegram's distinctive features is its focus on user security and privacy. The application uses end-to-end encryption to protect user messages from unauthorized access. Additionally, Telegram provides additional features such as secret chats, where messages can be set to disappear after a set time, and the ability to set passwords to access specific messages. These features make Telegram a top choice for those who value privacy in online communication. Telegram is also known for offering a variety of public channels and groups that allow users to participate in discussions, access news content, and follow specific interests. With various community and third-party developed bots, users can extend the application's functionality to suit their needs. Furthermore, Telegram has developed various supplementary products, such as Telegram X and Telegram Desktop, to cater to users' diverse needs in accessing the platform. Through innovation and a focus on privacy, Telegram continues to be a major player in the instant messaging application industry.",
      requirements:
          "As a desired backend developer at Telegram Company, you are expected to have a deep understanding of software development and server infrastructure. Firstly, you are expected to have strong experience in backend development and the ability to design, implement, and maintain efficient and secure backend systems. This includes a strong grasp of programming languages such as Python, Go, or Java, as well as experience with databases like MySQL, MongoDB, or Redis. Additionally, experience in developing RESTful APIs and an understanding of microservices concepts will be a significant plus. Secondly, Telegram Company is looking for a backend developer with skills in server infrastructure management and optimization. This includes a profound understanding of cloud server management, such as AWS, Azure, or Google Cloud, and the ability to implement horizontally scalable architectures. Expertise in handling high-traffic loads and experience in speeding up server response times will be highly valued. Moreover, an understanding of DevOps concepts and experience in test automation and deployment will help ensure smooth development and product launches. Finally, as a backend developer at Telegram Company, you are expected to have strong analytical skills and the ability to work with data effectively. The ability to optimize application performance based on data analysis, monitor real-time application performance, and identify areas for improvement will be a significant advantage. Skills in understanding and implementing information security practices and data protection will also be essential. Additionally, the ability to collaborate with cross-functional teams and good communication skills are also expected from a backend developer at Telegram Company.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(viewportFraction: 0.97);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        color: Colors.white,
        child: bottom_navbar(),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(top: 50),
              color: Colors.white,
              child: Column(
                children: [
                  header_bar(),
                  SizedBox(height: 30),
                  search_bar(),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          'Featured Jobs',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 200,
                    child: PageView.builder(
                      controller: controller,
                      itemCount: jobsList.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    JobScreen(job: jobsList[index]),
                              ));
                        },
                        child: FeaturedJobWidget(
                          job: jobsList[index],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SmoothPageIndicator(
                    controller: controller,
                    count: jobsList.length,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Color.fromARGB(204, 11, 31, 2),
                      dotWidth: 10,
                      dotHeight: 10,
                      dotColor: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Text(
                    'Popular Jobs',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
          ),
          SliverList.builder(
            itemCount: jobsList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JobScreen(job: jobsList[index]),
                    ));
              },
              child: PopularJobWidget(job: jobsList[index]),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Recommended Jobs',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: jobsList.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => JobScreen(job: jobsList[index]),
                        ));
                  },
                  child: RecomendedJobWidget(job: jobsList[index]),
                ),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 40),
          ),
        ],
      ),
    );
  }
}
