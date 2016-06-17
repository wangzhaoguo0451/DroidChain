.class public final Lgfx;
.super Ljava/lang/Object;
.source "VideoSimpleCardController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/card/views/ContentCardView;",
        "Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lfbv;

    invoke-direct {v0}, Lfbv;-><init>()V

    .line 23
    new-instance v0, Lgee;

    invoke-direct {v0}, Lgee;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/wandoujia/p4/card/views/ContentCardView;

    check-cast p2, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;

    invoke-virtual {p1}, Lcom/wandoujia/p4/card/views/ContentCardView;->getCardView()Lfca;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/p4/card/views/ContentCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-static {v0, p2}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    invoke-static {}, Lfqn;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/p4/card/views/ContentCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {v0}, Lfca;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/p4/card/views/ContentCardView;->getButton()Lfar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/p4/card/views/ContentCardView;->getButton()Lfar;

    move-result-object v0

    iget-object v1, p2, Lcom/wandoujia/p4/video2/card/model/VideoCardViewModel;->a:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-static {v0, v1}, Lgee;->a(Lfar;Lcom/wandoujia/p4/video2/model/VideoMetaModel;)V

    :cond_1
    return-void
.end method
