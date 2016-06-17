.class public final Lell;
.super Ljava/lang/Object;
.source "SuggestionCardController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lelp;",
        "Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 12
    check-cast p1, Lelp;

    check-cast p2, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;

    iget-object v0, p1, Lelp;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lehx;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p1, Lelp;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;

    iget-object v0, v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;->shortcut:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-static {v0}, Lehh;->b(Lcom/wandoujia/entities/app/IAppLiteInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lehx;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lelp;->c:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {p2}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p2, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;

    iget-object v1, v1, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;->shortcut:Lcom/wandoujia/entities/app/AppLiteInfo;

    invoke-virtual {v1}, Lcom/wandoujia/entities/app/AppLiteInfo;->getAppLiteIcon()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v0, v1}, Lehx;->a(Lcom/wandoujia/image/view/AsyncImageView;Ljava/lang/String;)V

    iget-object v0, p1, Lelp;->d:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-static {v0}, Lely;->a(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;)Leix;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->c()Leiu;

    move-result-object v1

    invoke-static {v0, v1}, Lely;->a(Leix;Leiu;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
