import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/base/base_widget/stateless/base_stateless_widget.dart';
import 'package:flutter_clean_architecture/core/di/di.dart';
import 'package:flutter_clean_architecture/src/home/bloc/home_bloc.dart';

class HomeScreen extends BaseStatelessWidget<HomeBloc> {
  const HomeScreen({super.key});
  @override
  HomeBloc get bloc => getIt<HomeBloc>();

  @override
  Widget buildView(BuildContext context, HomeBloc model) {
    return Column(
      children: [
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.list.length,
                itemBuilder: (context, index) {
                  return Text(state.list[index].title);
                },
              ),
            );
          },
        ),
      ],
    );
  }
}

// class HomeScreen extends BaseStatefulWidget<HomeBloc> {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends BasePageState<HomeBloc, HomeScreen> {
//   @override
//   HomeBloc get bloc => getIt<HomeBloc>();
//
//   @override
//   Widget buildView(BuildContext context, HomeBloc model) {
//     return Column(
//       children: [
//         BlocBuilder<HomeBloc, HomeState>(
//           builder: (context, state) {
//             return Expanded(
//               child: ListView.builder(
//                 itemCount: state.list.length,
//                 itemBuilder: (context, index) {
//                   return Text(state.list[index].title);
//                 },
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
