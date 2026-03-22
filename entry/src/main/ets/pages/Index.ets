@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  @State count:number=0;

  build() {
    Row(){
      Column(){
        Text(this.message)
          .fontSize(50)
          .fontColor(Color.Pink)
          .fontWeight(FontWeight.Bold)

        Button(){
          Text('change')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .fontColor('#fff')
        .type(ButtonType.ROUNDED_RECTANGLE)
        .margin({
          top:50
        })
        .padding(10)
        .backgroundColor(Color.Grey)
        .width('40%')
        .height('15%')
      }
      .width('100%')
    }
    .height('100%')
  }
}