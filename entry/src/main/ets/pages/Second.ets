@Entry
@Component
struct Second{

  @State message: string = 'Hi there';

  build() {
    Row(){
      Column(){
        Text(this.message)
          .fontSize(50)
          .fontColor(Color.Red)
          .fontWeight(FontWeight.Bold)
        Button('click me')
          .fontSize(35)
          .fontColor(Color.White)
          .type(ButtonType.ROUNDED_RECTANGLE)
          .margin({
            top:50
          })
          .background('#0D9FFB')
          .onClick(()=>{
            let context:UIContext=this.getUIContext()
            let router=context.getRouter()
            try {
              router.back()
            }catch (e) {
              console.log('Jump is error:'+e)
            }

          })
      }

      .height('100%')
    }
    .width('100%')
  }


}