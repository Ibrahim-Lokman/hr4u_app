import 'package:flutter/material.dart';
import 'package:hr4u_app/kpi_management/models/kpi.dart';


class KPIProvider with ChangeNotifier {
  List<Kpi> _items = [
    Kpi(
      id:"1",
      title:"Bank Projects 1",
      year:"2023",
      defination:"Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.",
      strategicLink:"Do  Analog",
      note:"Note 3",
      needImprovement:5,
      wellDone:3,
      exceedExpectation:2
  ),

  Kpi(
      id:"2",
      title:"RedDot Projects 2",
      year:"2023",
      defination:"Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.",
      strategicLink:"Do Digital",
      note:"Note 3",
      needImprovement:10,
      wellDone:7,
      exceedExpectation:10
  ),

  Kpi(
      id:"3",
      title:"Bank Projects 2",
      year:"2022",
      defination:"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.",
      strategicLink:"Do  Analog",
      note:"Note 2",
      needImprovement:3,
      wellDone:2,
      exceedExpectation:4
  ),

  Kpi(
      id: "4",
      title:"Robi Projects 2",
      year:"2022",
      defination:"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.",
      strategicLink:"Do  Analog",
      note:"Note 2",
      needImprovement:1,
      wellDone:3,
      exceedExpectation:8
  ),

  Kpi(
      id:"5",
      title:"RedDot Projects 2",
      year:"2022",
      defination:"Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.",
      strategicLink:"Do  Analog",
      note:"Note 2",
      needImprovement:2,
      wellDone:9,
      exceedExpectation:7
  ),
  Kpi(
      id:"6",
      title:"RedDot Projects 1",
      year:"2022",
      defination:"Morbi porttitor lorem id ligula.",
      strategicLink:"Do  Analog",
      note:"Note1",
      needImprovement:5,
      wellDone:9,
      exceedExpectation:6
  ),
  Kpi(
      id:"7",
      title:"IT Projects 3",
      year:"2020",
      defination:"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.",
      strategicLink:"Do Digital",
      note:"Note 3",
      needImprovement:8,
      wellDone:9,
      exceedExpectation:1
  ),
  Kpi(
      id:"8",
      title:"RedDot Projects 3",
      year:"2023",
      defination:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.",
      strategicLink:"Do  Analog",
      note:"Note1",
      needImprovement:6,
      wellDone:3,
      exceedExpectation:3
  ),
  Kpi(
      id:"9",
      title:"IT Projects 3",
      year:"2023",
      defination:"In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.",
      strategicLink:"Do  Analog",
      note:"Note 2",
      needImprovement:1,
      wellDone:3,
      exceedExpectation:5
  ),
  Kpi(
      id:"10",
      title:"Robi Projects 3",
      year:"2020",
      defination:"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.",
      strategicLink:"Do  Analog",
      note:"Note1",
      needImprovement:7,
      wellDone:2,
      exceedExpectation:1
  ),
   Kpi(
      id:"11",
      title:"RedDot Projects 2",
      year:"2022",
      defination:"In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.",
      strategicLink:"Do Digital",
      note:"Note 2",
      needImprovement:7,
      wellDone:5,
      exceedExpectation:1
  ),
  Kpi(
      id:"12",
      title:"Robi Projects 2",
      year:"2023",
      defination:"Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.",
      strategicLink:"Do Digital",
      note:"Note 2",
      needImprovement:4,
      wellDone:5,
      exceedExpectation:3
   ),
  ];


  List<Kpi> get items {
    return [..._items];
  }

  Kpi findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }


  void addProduct(Kpi kpi) {
    final newKpi = Kpi(
      id: DateTime.now().toString(),
      title: kpi.title,
      year: kpi.year,
      defination: kpi.defination,
      strategicLink: kpi.strategicLink,
      note: kpi.note,
      needImprovement: kpi.needImprovement,
      wellDone: kpi.wellDone,
      exceedExpectation: kpi.exceedExpectation,
    );
    _items.add(newKpi);
    notifyListeners();
  }

}