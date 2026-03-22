@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  @State count:number=0;

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .fontColor("#fee000")
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = this.count%2===0?'HelloWorld':'Welcome'
        })
    }
    .height('100%')
    .width('100%')
  }
}