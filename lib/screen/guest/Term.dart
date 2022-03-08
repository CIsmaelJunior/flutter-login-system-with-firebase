import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  final Function(int) onChangedStep;
  const TermScreen({Key? key, required this.onChangedStep}) : super(key: key);

  @override
  State<TermScreen> createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  late ScrollController _scrollController;
  bool _termReaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange) {
        setState(() => _termReaded = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.0,
          titleSpacing: 0.0,
          title: Row(
            children: [
              Text(
                "Terms & Conditions",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          leading: IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ea soluta beatae molestiae natus sint? Necessitatibus, fuga ullam eius vitae ea perspiciatis autem sed quaerat earum incidunt repudiandae sint accusamus adipisci, dolore eos. Expedita aliquid rem alias recusandae, dolor praesentium officiis? Autem ipsum adipisci officiis quaerat dolore nam dignissimos quisquam repellendus aliquam, quis laudantium. Quam, nemo! Exercitationem molestias veniam nemo mollitia eligendi, animi ad sapiente excepturi deleniti tempora porro officiis voluptatibus non commodi inventore eaque natus sit sint est quos, aliquam, temporibus error sunt optio. Commodi facilis quo, minus porro fugit delectus amet eveniet voluptatibus laborum voluptates tenetur natus nulla, deleniti enim optio unde maxime laboriosam modi iusto consectetur impedit vero necessitatibus iste consequuntur. Unde quasi voluptatibus iusto debitis, ex, asperiores deserunt saepe ducimus et cumque sunt eos explicabo molestiae eius ut quo voluptate dicta quos. Totam voluptatibus ex quae expedita quam, optio architecto quibusdam suscipit natus, dolor repudiandae eveniet, tempore explicabo voluptas maiores. Veritatis, magni delectus? Deleniti provident accusamus vitae laboriosam, dolor cum modi autem dignissimos debitis aperiam distinctio nam nobis odit nihil qui voluptatem quasi nisi pariatur a libero consequatur quia hic possimus exercitationem? Neque perferendis tenetur vitae eos soluta, ullam nulla eveniet, ducimus, adipisci facere corrupti iusto perspiciatis.Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ea soluta beatae molestiae natus sint? Necessitatibus, fuga ullam eius vitae ea perspiciatis autem sed quaerat earum incidunt repudiandae sint accusamus adipisci, dolore eos. Expedita aliquid rem alias recusandae, dolor praesentium officiis? Autem ipsum adipisci officiis quaerat dolore nam dignissimos quisquam repellendus aliquam, quis laudantium. Quam, nemo! Exercitationem molestias veniam nemo mollitia eligendi, animi ad sapiente excepturi deleniti tempora porro officiis voluptatibus non commodi inventore eaque natus sit sint est quos, aliquam, temporibus error sunt optio. Commodi facilis quo, minus porro fugit delectus amet eveniet voluptatibus laborum voluptates tenetur natus nulla, deleniti enim optio unde maxime laboriosam modi iusto consectetur impedit vero necessitatibus iste consequuntur. Unde quasi voluptatibus iusto debitis, ex, asperiores deserunt saepe ducimus et cumque sunt eos explicabo molestiae eius ut quo voluptate dicta quos. Totam voluptatibus ex quae expedita quam, optio architecto quibusdam suscipit natus, dolor repudiandae eveniet, tempore explicabo voluptas maiores. Veritatis, magni delectus? Deleniti provident accusamus vitae laboriosam, dolor cum modi autem dignissimos debitis aperiam distinctio nam nobis odit nihil qui voluptatem quasi nisi pariatur a libero consequatur quia hic possimus exercitationem? Neque perferendis tenetur vitae eos soluta, ullam nulla eveniet, ducimus, adipisci facere corrupti iusto perspiciatis."),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                color: Theme.of(context).primaryColor,
                elevation: 0.0,
                onPressed:
                    !_termReaded ? null : () => {widget.onChangedStep(2)},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0)),
                child: Text(
                  "Accepter & continuer".toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
