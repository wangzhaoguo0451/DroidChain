.class public Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;
.super Landroid/widget/RelativeLayout;
.source "CleanWidget.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseView;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;
    .locals 1
    .parameter

    .prologue
    .line 54
    const v0, 0x7f03007f

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;

    return-object v0
.end method


# virtual methods
.method public getCircleProgressBar()Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->d:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    return-object v0
.end method

.method public getProgressImg()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStatusText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    const-string v0, "onDraw called"

    invoke-static {v0}, Ld;->A(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f0c0224

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->a:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0c0226

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->b:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0c0225

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->c:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0c0223

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/widget/CleanWidget;->d:Lcom/wandoujia/p4/app_launcher/clean/widget/CircleProgressBar;

    .line 51
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 82
    const-string v0, "onLayout called"

    invoke-static {v0}, Ld;->A(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 76
    const-string v0, "onMeasure called"

    invoke-static {v0}, Ld;->A(Ljava/lang/String;)V

    .line 77
    return-void
.end method
