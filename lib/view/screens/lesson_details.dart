import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lms_portal/controllers/utills/myapp_colors.dart';
import 'package:lms_portal/controllers/utills/myapp_styles.dart';
import 'package:lms_portal/view/screens/splash_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lms_portal/view/screens/studentPanel/pdf_view_page.dart';

class LessonDetailsScreen extends StatelessWidget {
  LessonDetailsScreen({super.key});
  RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: AppColors.whiteColor,
          ),
          backgroundColor: AppColors.primaryColor,
          title: Text(
            'Lesson Detail',
            style: AppTextStyles.headingTextStyle.copyWith(color: AppColors.whiteColor, fontSize: 18),
          ),
          centerTitle: true,
        ),
        body: Obx(() {
          return Container(
            height: mediaQuerySize.height,
            width: mediaQuerySize.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.04.w, vertical: mediaQuerySize.height * 0.01.h),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      selectedIndex.value = 0;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left Row with Icon and Text
                        Row(
                          children: [
                            Icon(Icons.text_format, color: selectedIndex.value == 0 ? AppColors.primaryColor : null),
                            SizedBox(width: 8), // Space between icon and text
                            Text(
                              'Theory material',
                              style: AppTextStyles.headingTextStyle.copyWith(fontSize: 14, color: selectedIndex.value == 0 ? AppColors.primaryColor : null),
                            ),
                          ],
                        ),
                        // Vertical Divider
                        Container(
                          height: mediaQuerySize.height * 0.045, // Give the divider a height
                          child: VerticalDivider(
                            color: Colors.black,
                            indent: 10,
                            thickness: 1,
                            width: 1,
                          ),
                        ),
                        // Right Row with Icon and Text
                        GestureDetector(
                          onTap: () {
                            selectedIndex.value = 1;
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.picture_as_pdf,
                                color: selectedIndex.value == 1 ? AppColors.primaryColor : null,
                              ),
                              SizedBox(width: 8), // Space between icon and text
                              Text(
                                'PDF material',
                                style: AppTextStyles.headingTextStyle.copyWith(fontSize: 14, color: selectedIndex.value == 1 ? AppColors.primaryColor : null),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  selectedIndex == 0
                      ? Expanded(
                          child: ListView.builder(
                            itemCount: quizTextList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.04.w, vertical: mediaQuerySize.height * 0.01.h),
                                padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.07.w, vertical: mediaQuerySize.height * 0.02.h),
                                width: mediaQuerySize.width.w,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.primaryColor.withOpacity(0.9)),
                                child: Column(
                                  children: [
                                    Text(
                                      quizTextList[index],
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.simpleText.copyWith(color: AppColors.whiteColor, fontSize: 15),
                                    ),
                                    SizedBox(
                                      height: mediaQuerySize.height * 0.02.h,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              Clipboard.setData(ClipboardData(text: quizTextList[index]));
                                              Fluttertoast.showToast(msg: 'text copied');
                                            },
                                            icon: Icon(
                                              Icons.content_copy,
                                              color: Colors.amberAccent,
                                            )),
                                        Spacer(),
                                        Text(
                                          "${DateFormat('h:mm a, MMM dd').format(DateTime.now())}",
                                          style: AppTextStyles.simpleText.copyWith(color: Colors.amberAccent),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Get.to(() => PdfViewPage(pdfAssetPath: 'assets/pdfs/Appoverview.pdf'));
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.04.w, vertical: mediaQuerySize.height * 0.01.h),
                                  padding: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.07.w, vertical: mediaQuerySize.height * 0.02.h),
                                  width: mediaQuerySize.width.w,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.primaryColor.withOpacity(0.9)),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.picture_as_pdf,
                                        color: Colors.deepOrange,
                                        size: mediaQuerySize.height * 0.2.h,
                                      ),
                                      SizedBox(
                                        height: mediaQuerySize.height * 0.001.h,
                                      ),
                                      Text(
                                        'Social Sciences notes for mid term',
                                        style: AppTextStyles.headingTextStyle.copyWith(color: AppColors.whiteColor, fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: mediaQuerySize.height * 0.01.h,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "${DateFormat('h:mm a, MMM dd').format(DateTime.now())}",
                                          style: AppTextStyles.simpleText.copyWith(color: Colors.amberAccent),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  List<String> quizTextList = [
    "Time management is crucial for achieving success in both personal and professional life. It allows individuals to prioritize tasks, minimize distractions, and stay focused on what matters most. By managing time effectively, people can reduce stress and improve productivity, creating more time for personal activities and ensuring their goals are met.",
    "Social media has drastically transformed communication in the modern world. It enables instant connections across borders, allowing users to share ideas, experiences, and opinions. While it has brought positive change, it has also raised concerns about privacy, misinformation, and the negative impact on mental health due to overuse or unrealistic comparisons.",
    "Artificial Intelligence (AI) is revolutionizing industries by simulating human intelligence in machines. From healthcare to transportation, AI improves efficiency and decision-making by processing vast amounts of data. However, as AI evolves, questions arise about its ethical use, potential job losses, and the impact it may have on privacy and security.",
    "Education is the key to unlocking opportunities and empowering individuals. It provides knowledge, promotes critical thinking, and helps people develop skills needed for success in the workplace and beyond. Beyond academics, education also shapes a person's character and values, encouraging them to be responsible citizens and contributing members of society.",
    "Climate change is one of the most pressing global challenges of our time. Rising temperatures, extreme weather events, and sea-level rise are all consequences of human activity. Addressing climate change requires collective global action to reduce carbon emissions, transition to renewable energy, and protect ecosystems for future generations.",
    "Mental health is an important aspect of overall well-being. Conditions like anxiety, depression, and stress affect millions worldwide. Raising awareness about mental health helps reduce stigma and encourages individuals to seek help when needed. Creating supportive environments and promoting self-care can improve mental health outcomes for individuals and communities.",
    "Renewable energy sources such as solar, wind, and hydroelectric power are becoming increasingly important in the fight against climate change. These energy sources are sustainable, reduce dependence on fossil fuels, and lower greenhouse gas emissions. Transitioning to renewable energy is essential for ensuring a cleaner, more sustainable future for our planet.",
    "The internet has transformed the way we access information and communicate. It has opened doors for innovation, education, and global connectivity. However, the internet also presents challenges such as online privacy concerns, cybersecurity risks, and the spread of misinformation, making it crucial to promote digital literacy and safe online practices.",
  ];
}
