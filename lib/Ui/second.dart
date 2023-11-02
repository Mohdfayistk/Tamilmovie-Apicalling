import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled12/Ui/second.dart';
import 'package:untitled12/Ui/second.dart';
import 'package:untitled12/Ui/second.dart';
import 'package:untitled12/Ui/second.dart';
import 'package:untitled12/Ui/second.dart';

import '../Repository/modelclass/tamilmovie.dart';
import '../bloc/tamil__movie_bloc.dart';
class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}
late Tamilmovie data;
class _secondState extends State<second> {
  @override
  void initState() {
    BlocProvider.of<TamilMovieBloc>(context).add(FetchMovie());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C2B34),
      body:Column(
        children: [
      BlocBuilder<TamilMovieBloc , TamilMovieState>(builder: (context, state) {
        if (state is TamilMovieLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is TamilMovieError) {
          return Text('error');
        }
        if (state is TamilMovieLoaded) {
          data = BlocProvider
              .of<TamilMovieBloc>(context)
              .animeModel;

          return Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 319.w,
                    height: 59.h,
                    color: Color(0xFFF3F3F3),
                    child: Row(
                      children: [

                        SizedBox(
                          width: 30.w,
                        ),

                        SizedBox(
                          width: 150.w,

                          child: Text(
                            data.genres![index].name.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w600,
                              height: 0.h,
                            ),
                          ),
                        ),
                        Text(
                          data.genres![index].id.toString(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                            height: 0.h,
                          ),
                        ),

                      ],
                    ),
                  );
                },

                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 28.h,
                  );
                },
                itemCount: data.genres!.length,));
        }
        else {
          return SizedBox();
        }
      })])


        );
  }
}
