import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? image;

  var imageContainer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Camera"),
        backgroundColor: const Color(0xFF235A97),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 10.0, right: 20.0, left: 20.0, bottom: 20.0),
                    child: getListView(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getListView(BuildContext context) {
    Future pickImage(ImageSource source) async {
      try {
        final image = await ImagePicker().pickImage(source: source);
        if (image == null) return;
        final imageTemporary = File(image.path);
        setState(() => this.image = imageTemporary);
      } on PlatformException catch (e) {
        if (kDebugMode) {
          print('Bild auswählen fehlgeschlagen: $e');
        }
      }
    }

    var listView = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
          child: image != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.file(
                    image!,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ))
              /*ClipOval(
              child: Image.file(
              image!,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              ))*/
              : Image.asset(
                  'assets/thi_logo.png',
                  width: 200,
                  fit: BoxFit.cover,
                ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 5.0),
          child: SizedBox(
            //width: MediaQuery.of(context).size.width,
            width: 800,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF235A97),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () => pickImage(ImageSource.camera),
              child: const ListTile(
                leading: Icon(
                  Icons.camera_alt,
                  size: 23.0,
                  color: Colors.white,
                ),
                title: Text(
                  "Camera",
                  style: TextStyle(color: Colors.white, fontSize: 23.0),
                ),
                /**onTap: () {
                    },*/
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5.0, 0, 30.0),
          child: SizedBox(
            //width: MediaQuery.of(context).size.width,
            width: 800,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF235A97),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () => pickImage(ImageSource.gallery),
              child: const ListTile(
                leading: Icon(
                  Icons.image,
                  size: 23.0,
                  color: Colors.white,
                ),
                title: Text(
                  "Gallery",
                  style: TextStyle(color: Colors.white, fontSize: 23.0),
                ),
                /**onTap: () {
                    },*/
              ),
            ),
          ),
        ),
      ],
    );
    debugPrint('Bild: $image');
    return listView;
  }

  /**Widget getListView(BuildContext context) {
    Future pickImage(ImageSource source) async {
      try {
        final image = await ImagePicker().pickImage(source: source);
        if (image == null) return;
        final imageTemporary = File(image.path);
        setState(() => this.image = imageTemporary);
      } on PlatformException catch (e) {
        if (kDebugMode) {
          print('Bild auswählen fehlgeschlagen: $e');
        }
      }
    }

    var listView = ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(80),
          child: image != null
              ? ClipOval(
                  child: Image.file(
                  image!,
                  width: 160,
                  height: 200,
                  fit: BoxFit.cover,
                ))
              : Image.asset(
                  'assets/thi_logo.png',
                  width: 160,
                  fit: BoxFit.cover,
                ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF235A97),
            ),
            onPressed: () => pickImage(ImageSource.camera),
            child: const ListTile(
              leading: Icon(
                Icons.camera_alt,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Camera",
                style: TextStyle(color: Colors.white),
              ),
              /**onTap: () {
                  },*/
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF235A97),
            ),
            onPressed: () => pickImage(ImageSource.gallery),
            child: const ListTile(
              leading: Icon(
                Icons.image,
                size: 30,
                color: Colors.white,
              ),
              title: Text(
                "Select image",
                style: TextStyle(color: Colors.white),
              ),
              /**onTap: () {
                  },*/
            ),
          ),
        ),
      ],
    );

    return listView;
  }*/
}

/**
 *
 * import 'dart:async';
    import 'dart:io';
    import 'package:flutter/foundation.dart';
    import 'package:flutter/material.dart';
    import 'package:image_picker/image_picker.dart';
    import 'package:video_player/video_player.dart';

    class Camera extends StatefulWidget {
    const Camera({Key? key, this.title}) : super(key: key);

    final String? title;

    @override
    _CameraState createState() => _CameraState();
    }

    class _CameraState extends State<Camera> {

    List<XFile>? _imageFileList;

    set _imageFile(XFile? value) {
    _imageFileList = value == null ? null : [value];
    }

    dynamic _pickImageError;
    bool isVideo = false;

    VideoPlayerController? _controller;
    VideoPlayerController? _toBeDisposed;
    String? _retrieveDataError;

    final ImagePicker _picker = ImagePicker();
    final TextEditingController maxWidthController = TextEditingController();
    final TextEditingController maxHeightController = TextEditingController();
    final TextEditingController qualityController = TextEditingController();

    Future<void> _playVideo(XFile? file) async {
    if (file != null && mounted) {
    await _disposeVideoController();
    late VideoPlayerController controller;
    if (kIsWeb) {
    controller = VideoPlayerController.network(file.path);
    } else {
    controller = VideoPlayerController.file(File(file.path));
    }
    _controller = controller;
    // In web, most browsers won't honor a programmatic call to .play
    // if the video has a sound track (and is not muted).
    // Mute the video so it auto-plays in web!
    // This is not needed if the call to .play is the result of user
    // interaction (clicking on a "play" button, for example).
    final double volume = kIsWeb ? 0.0 : 1.0;
    await controller.setVolume(volume);
    await controller.initialize();
    await controller.setLooping(true);
    await controller.play();
    setState(() {});
    }
    }

    void _onImageButtonPressed(ImageSource source,
    {BuildContext? context, bool isMultiImage = false}) async {
    if (_controller != null) {
    await _controller!.setVolume(0.0);
    }
    if (isVideo) {
    final XFile? file = await _picker.pickVideo(
    source: source, maxDuration: const Duration(seconds: 10));
    await _playVideo(file);
    } else if (isMultiImage) {
    await _displayPickImageDialog(context!,
    (double? maxWidth, double? maxHeight, int? quality) async {
    try {
    final pickedFileList = await _picker.pickMultiImage(
    maxWidth: maxWidth,
    maxHeight: maxHeight,
    imageQuality: quality,
    );
    setState(() {
    _imageFileList = pickedFileList;
    });
    } catch (e) {
    setState(() {
    _pickImageError = e;
    });
    }
    });
    } else {
    await _displayPickImageDialog(context!,
    (double? maxWidth, double? maxHeight, int? quality) async {
    try {
    final pickedFile = await _picker.pickImage(
    source: source,
    maxWidth: maxWidth,
    maxHeight: maxHeight,
    imageQuality: quality,
    );
    setState(() {
    _imageFile = pickedFile;
    });
    } catch (e) {
    setState(() {
    _pickImageError = e;
    });
    }
    });
    }
    }

    @override
    void deactivate() {
    if (_controller != null) {
    _controller!.setVolume(0.0);
    _controller!.pause();
    }
    super.deactivate();
    }

    @override
    void dispose() {
    _disposeVideoController();
    maxWidthController.dispose();
    maxHeightController.dispose();
    qualityController.dispose();
    super.dispose();
    }

    Future<void> _disposeVideoController() async {
    if (_toBeDisposed != null) {
    await _toBeDisposed!.dispose();
    }
    _toBeDisposed = _controller;
    _controller = null;
    }

    Widget _previewVideo() {
    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
    return retrieveError;
    }
    if (_controller == null) {
    return const Text(
    'You have not yet picked a video',
    textAlign: TextAlign.center,
    );
    }
    return Padding(
    padding: const EdgeInsets.all(10.0),
    child: AspectRatioVideo(_controller),
    );
    }

    Widget _previewImages() {
    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
    return retrieveError;
    }
    if (_imageFileList != null) {
    return Semantics(
    child: ListView.builder(
    key: UniqueKey(),
    itemBuilder: (context, index) {
    // Why network for web?
    // See https://pub.dev/packages/image_picker#getting-ready-for-the-web-platform
    return Semantics(
    label: 'image_picker_example_picked_image',
    child: kIsWeb
    ? Image.network(_imageFileList![index].path)
    : Image.file(File(_imageFileList![index].path)),
    );
    },
    itemCount: _imageFileList!.length,
    ),
    label: 'image_picker_example_picked_images');
    } else if (_pickImageError != null) {
    return Text(
    'Pick image error: $_pickImageError',
    textAlign: TextAlign.center,
    );
    } else {
    return const Text(
    'You have not yet picked an image.',
    textAlign: TextAlign.center,
    );
    }
    }

    Widget _handlePreview() {
    if (isVideo) {
    return _previewVideo();
    } else {
    return _previewImages();
    }
    }

    Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
    return;
    }
    if (response.file != null) {
    if (response.type == RetrieveType.video) {
    isVideo = true;
    await _playVideo(response.file);
    } else {
    isVideo = false;
    setState(() {
    _imageFile = response.file;
    _imageFileList = response.files;
    });
    }
    } else {
    _retrieveDataError = response.exception!.code;
    }
    }


    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    centerTitle: true,
    title: const Text("Camera"),
    backgroundColor: const Color(0xFF235A97),
    ),
    //body: getListView(context),
    body: Center(
    child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
    ? FutureBuilder<void>(
    future: retrieveLostData(),
    builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
    switch (snapshot.connectionState) {
    case ConnectionState.none:
    case ConnectionState.waiting:
    return const Text(
    'You have not yet picked an image.',
    textAlign: TextAlign.center,
    );
    case ConnectionState.done:
    return _handlePreview();
    default:
    if (snapshot.hasError) {
    return Text(
    'Pick image/video error: ${snapshot.error}}',
    textAlign: TextAlign.center,
    );
    } else {
    return const Text(
    'You have not yet picked an image.',
    textAlign: TextAlign.center,
    );
    }
    }
    },
    )
    : _handlePreview(),
    ),
    floatingActionButton: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
    Semantics(
    label: 'image_picker_example_from_gallery',
    child: FloatingActionButton(
    onPressed: () {
    isVideo = false;
    _onImageButtonPressed(ImageSource.gallery, context: context);
    },
    heroTag: 'image0',
    tooltip: 'Pick Image from gallery',
    child: const Icon(Icons.photo),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: FloatingActionButton(
    onPressed: () {
    isVideo = false;
    _onImageButtonPressed(
    ImageSource.gallery,
    context: context,
    isMultiImage: true,
    );
    },
    heroTag: 'image1',
    tooltip: 'Pick Multiple Image from gallery',
    child: const Icon(Icons.photo_library),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: FloatingActionButton(
    onPressed: () {
    isVideo = false;
    _onImageButtonPressed(ImageSource.camera, context: context);
    },
    heroTag: 'image2',
    tooltip: 'Take a Photo',
    child: const Icon(Icons.camera_alt),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: FloatingActionButton(
    backgroundColor: Colors.red,
    onPressed: () {
    isVideo = true;
    _onImageButtonPressed(ImageSource.gallery);
    },
    heroTag: 'video0',
    tooltip: 'Pick Video from gallery',
    child: const Icon(Icons.video_library),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: FloatingActionButton(
    backgroundColor: Colors.red,
    onPressed: () {
    isVideo = true;
    _onImageButtonPressed(ImageSource.camera);
    },
    heroTag: 'video1',
    tooltip: 'Take a Video',
    child: const Icon(Icons.videocam),
    ),
    ),
    ],
    ),
    );
    }
    Text? _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
    final Text result = Text(_retrieveDataError!);
    _retrieveDataError = null;
    return result;
    }
    return null;
    }

    Future<void> _displayPickImageDialog(
    BuildContext context, OnPickImageCallback onPick) async {
    return showDialog(
    context: context,
    builder: (context) {
    return AlertDialog(
    title: Text('Add optional parameters'),
    content: Column(
    children: <Widget>[
    TextField(
    controller: maxWidthController,
    keyboardType: TextInputType.numberWithOptions(decimal: true),
    decoration:
    InputDecoration(hintText: "Enter maxWidth if desired"),
    ),
    TextField(
    controller: maxHeightController,
    keyboardType: TextInputType.numberWithOptions(decimal: true),
    decoration:
    InputDecoration(hintText: "Enter maxHeight if desired"),
    ),
    TextField(
    controller: qualityController,
    keyboardType: TextInputType.number,
    decoration:
    InputDecoration(hintText: "Enter quality if desired"),
    ),
    ],
    ),
    actions: <Widget>[
    TextButton(
    child: const Text('CANCEL'),
    onPressed: () {
    Navigator.of(context).pop();
    },
    ),
    TextButton(
    child: const Text('PICK'),
    onPressed: () {
    double? width = maxWidthController.text.isNotEmpty
    ? double.parse(maxWidthController.text)
    : null;
    double? height = maxHeightController.text.isNotEmpty
    ? double.parse(maxHeightController.text)
    : null;
    int? quality = qualityController.text.isNotEmpty
    ? int.parse(qualityController.text)
    : null;
    onPick(width, height, quality);
    Navigator.of(context).pop();
    }),
    ],
    );
    });
    }
    }

    typedef void OnPickImageCallback(
    double? maxWidth, double? maxHeight, int? quality);

    class AspectRatioVideo extends StatefulWidget {
    AspectRatioVideo(this.controller);

    final VideoPlayerController? controller;

    @override
    AspectRatioVideoState createState() => AspectRatioVideoState();
    }

    class AspectRatioVideoState extends State<AspectRatioVideo> {
    VideoPlayerController? get controller => widget.controller;
    bool initialized = false;

    void _onVideoControllerUpdate() {
    if (!mounted) {
    return;
    }
    if (initialized != controller!.value.isInitialized) {
    initialized = controller!.value.isInitialized;
    setState(() {});
    }
    }

    @override
    void initState() {
    super.initState();
    controller!.addListener(_onVideoControllerUpdate);
    }

    @override
    void dispose() {
    controller!.removeListener(_onVideoControllerUpdate);
    super.dispose();
    }

    @override
    Widget build(BuildContext context) {
    if (initialized) {
    return Center(
    child: AspectRatio(
    aspectRatio: controller!.value.aspectRatio,
    child: VideoPlayer(controller!),
    ),
    );
    } else {
    return Container();
    }
    }
    }


    Widget getListView(BuildContext context) {
    var listView = ListView(
    padding: const EdgeInsets.all(10),
    children: const <Widget>[
    Center(
    child: Text('Camera Screen'),
    ),
    Center(
    child: Text('Camera Screen'),
    ),
    ],
    );

    return listView;
    }


 *
 */
