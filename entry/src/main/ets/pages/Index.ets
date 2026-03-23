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
          Text('change '+this.count)
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
        .onClick(()=>{
          this.count++
          let context:UIContext=this.getUIContext();
          let router=context.getRouter();
          router.pushUrl(
            {
              url:"pages/Second"
            }
          ).then(()=>{
            console.log('Jump is ok!')
          }).catch((err:BusinessError)=>{
            console.log('Jump is error!：'+err)})
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}