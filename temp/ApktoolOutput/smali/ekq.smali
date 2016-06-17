.class public final Lekq;
.super Ljava/lang/Object;
.source "SearchCardController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Leld;",
        "Lelc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Leld;Lelc;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Leld;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lelc;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v1}, Lcom/wandoujia/entities/app/AppLiteInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lehx;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Leld;->b:Landroid/widget/TextView;

    iget-object v1, p0, Leld;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p1, Lelc;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-static {v1, v2}, Lehh;->a(ILcom/wandoujia/entities/app/IAppLiteInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lehx;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Leld;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lelc;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v1}, Lcom/wandoujia/entities/app/AppLiteInfo;->isAd()Z

    move-result v1

    invoke-static {v0, v1}, Lehx;->b(Landroid/view/View;Z)V

    .line 21
    iget-object v0, p0, Leld;->c:Lcom/wandoujia/image/view/AsyncImageView;

    iget-object v1, p1, Lelc;->a:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v1}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lehx;->a(Lcom/wandoujia/image/view/AsyncImageView;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Leld;->e:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-static {v0}, Lely;->a(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;)Leix;

    move-result-object v0

    invoke-virtual {p1}, Lelc;->a()Leiu;

    move-result-object v1

    invoke-static {v0, v1}, Lely;->a(Leix;Leiu;)V

    .line 23
    invoke-virtual {p0}, Leld;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lehx;->c(Landroid/view/View;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    check-cast p1, Leld;

    check-cast p2, Lelc;

    invoke-static {p1, p2}, Lekq;->a(Leld;Lelc;)V

    return-void
.end method
