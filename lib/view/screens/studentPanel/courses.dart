import 'package:flutter/material.dart';

import '../../../controllers/utills/myapp_colors.dart';
import '../../../controllers/utills/myapp_styles.dart';
class Courses extends StatelessWidget {
  const Courses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        ),
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Quiz',
          style: AppTextStyles.headingTextStyle.copyWith(color: AppColors.whiteColor, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 25,
                itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                     leading: Icon(Icons.my_library_books_outlined),
                     title: Text('Maqbool'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}