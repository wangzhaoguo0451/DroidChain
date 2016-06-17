.class public Lcom/wandoujia/phoenix2/av/view/AutoBindImageView;
.super Lcom/wandoujia/image/view/AsyncImageView;
.source "AutoBindImageView.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/image/view/AsyncImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-super/range {p0 .. p5}, Lcom/wandoujia/image/view/AsyncImageView;->onLayout(ZIIII)V

    .line 35
    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/AutoBindImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/phoenix2/av/view/AutoBindImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/AutoBindImageView;->a:Ljava/lang/String;

    invoke-static {v0}, Ld;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/wandoujia/phoenix2/av/view/AutoBindImageView;->a:Ljava/lang/String;

    const v1, 0x7f0a0044

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/phoenix2/av/view/AutoBindImageView;->a(Ljava/lang/String;I)V

    .line 40
    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/wandoujia/phoenix2/av/view/AutoBindImageView;->a:Ljava/lang/String;

    .line 30
    return-void
.end method
