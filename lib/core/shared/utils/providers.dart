import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/features/profile/presentation/cubit/profile_cubit/profile_cubit.dart';
import 'package:hvatai/locator.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  BlocProvider(create: (_) => locator<ProfileCubit>()),
];
