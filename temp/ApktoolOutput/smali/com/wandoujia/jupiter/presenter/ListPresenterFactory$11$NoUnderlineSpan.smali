.class Lcom/wandoujia/jupiter/presenter/ListPresenterFactory$11$NoUnderlineSpan;
.super Landroid/text/style/UnderlineSpan;
.source "ListPresenterFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0}, Landroid/text/style/UnderlineSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 650
    return-void
.end method
