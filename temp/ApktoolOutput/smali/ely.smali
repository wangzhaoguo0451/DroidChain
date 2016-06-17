.class public final Lely;
.super Ljava/lang/Object;
.source "BindUtils.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/wandoujia/launcher_search/R$id;->card_controller:I

    sput v0, Lely;->a:I

    return-void
.end method

.method public static a(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 20
    sget v0, Lcom/wandoujia/launcher_search/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;)Leix;
    .locals 1
    .parameter

    .prologue
    .line 40
    new-instance v0, Lelz;

    invoke-direct {v0, p0}, Lelz;-><init>(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;)V

    return-object v0
.end method

.method public static a(Leix;Leiu;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 54
    if-eqz p0, :cond_0

    invoke-interface {p0}, Leix;->a()Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Leis;

    invoke-direct {v0}, Leis;-><init>()V

    .line 56
    invoke-virtual {v0, p0, p1}, Leis;->a(Leix;Leiu;)V

    .line 57
    invoke-interface {p0}, Leix;->a()Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    move-result-object v1

    sget v2, Lely;->a:I

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;->setTag(ILjava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 24
    sget v0, Lcom/wandoujia/launcher_search/R$id;->sub_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static c(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 28
    sget v0, Lcom/wandoujia/launcher_search/R$id;->ad_label:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static d(Landroid/view/View;)Lcom/wandoujia/image/view/AsyncImageView;
    .locals 1
    .parameter

    .prologue
    .line 32
    sget v0, Lcom/wandoujia/launcher_search/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    return-object v0
.end method

.method public static e(Landroid/view/View;)Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;
    .locals 1
    .parameter

    .prologue
    .line 36
    sget v0, Lcom/wandoujia/launcher_search/R$id;->action_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    return-object v0
.end method
