import 'package:client/utils/viewModel/viewModel.dart';
import 'package:flutter/widgets.dart';

class ViewModelPropertyWidgetBuilder<TPropertyType>
    extends StreamBuilder<PropertyChangedEvent> {
  // Properties

  // Methods

  ViewModelPropertyWidgetBuilder({
    required ViewModel viewModel,
    required String propertyName,
    required AsyncWidgetBuilder<PropertyChangedEvent> builder,
  }) : super(
            builder: builder,
            stream: viewModel.whenPropertyChanged(propertyName));
}
