

import '../Utils/exports.dart';

class ListTileButtom extends StatefulWidget {
  final onTap;
  bool showButtom;
  final order;
  final whintor;
  final date;
  final client;
  final priority;
  final status;
  Color hovercolor;



  ListTileButtom({
    required this.order,
    required this.whintor,
    required this.date,
    required this.client,
    required this.priority,
    required this.status,
    required this.hovercolor,

    required this.onTap,

    this.showButtom = false,


  });

  @override
  State<ListTileButtom> createState() => _ListTileButtomState();
}

class _ListTileButtomState extends State<ListTileButtom> {

  bool isHovered=false;
  @override
  Widget build(BuildContext context) {



    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return MouseRegion(
      onEnter: (event)=>  setState(() => widget.hovercolor = PaletteColors.selectedColor),
      onExit: (event) => setState(() => widget.hovercolor = PaletteColors.white),
     

      child: Container(
        width: 1336,
        color: widget.hovercolor,

        child: ListTile(
          onTap: widget.onTap,

          title: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15 ),
                    child: TextCustom(
                      text: widget.order,
                      size: 14.0,
                      color: PaletteColors.grey,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.normal,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90 ),
                    child: TextCustom(
                      text:
                      widget.whintor,
                      maxLines: 4,
                      size: 14.0,
                      color: PaletteColors.grey,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.normal,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60 ),
                    child: TextCustom(
                      text: widget.date,
                      size: 14.0,
                      color: PaletteColors.grey,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.normal,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20 ),
                    child: TextCustom(
                      text: widget.client,
                      size: 14.0,
                      color: PaletteColors.grey,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.normal,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextCustom(
                      text: widget.priority,
                      size: 14.0,
                      color: PaletteColors.grey,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.normal,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(flex: 1),
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: TextCustom(
                      text: widget.status,
                      size: 14.0,
                      color: PaletteColors.grey,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.normal,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              widget.showButtom==true?Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ButtonCustom(
                      widthCustom: 0.20,
                      heightCustom: 0.07,
                      text: "Entrar",
                      size: 14.0,
                      colorText: PaletteColors.white,
                      colorButton: PaletteColors.primaryColor,
                      colorBorder: PaletteColors.primaryColor,
                      onPressed: () =>
                          Navigator.popAndPushNamed(context, '/home'),
                      font: 'Nunito',
                    ),
                  ],
                ),
              ):SizedBox(height: 0.1),
            ],
          ),
        ),

      ),
    );

  }
  onEnter(_) {
    setState(() => widget.hovercolor = PaletteColors.selectedColor
    );
  }
  onExit(_) {
    setState(() => widget.hovercolor = PaletteColors.white
    );
  }
}