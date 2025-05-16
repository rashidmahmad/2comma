import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chart_g_p_t_widget.dart' show ChartGPTWidget;
import 'package:flutter/material.dart';

class ChartGPTModel extends FlutterFlowModel<ChartGPTWidget> {
  ///  Local state fields for this page.

  List<ChataiStruct> chatAi = [];
  void addToChatAi(ChataiStruct item) => chatAi.add(item);
  void removeFromChatAi(ChataiStruct item) => chatAi.remove(item);
  void removeAtIndexFromChatAi(int index) => chatAi.removeAt(index);
  void insertAtIndexInChatAi(int index, ChataiStruct item) =>
      chatAi.insert(index, item);
  void updateChatAiAtIndex(int index, Function(ChataiStruct) updateFn) =>
      chatAi[index] = updateFn(chatAi[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
