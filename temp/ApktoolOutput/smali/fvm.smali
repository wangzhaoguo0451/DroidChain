.class public final Lfvm;
.super Ljava/lang/Object;
.source "GiftDetailCardViewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;
.implements Lfvj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/card/views/ContentCardView;",
        "Lfvq;",
        ">;",
        "Lfvj;"
    }
.end annotation


# instance fields
.field private a:Lfut;

.field private b:Lfvq;

.field private c:Lcom/wandoujia/p4/card/views/ContentCardView;

.field private d:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lfbv;

    invoke-direct {v0}, Lfbv;-><init>()V

    .line 26
    new-instance v0, Lfut;

    invoke-direct {v0, p1}, Lfut;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    iput-object v0, p0, Lfvm;->a:Lfut;

    .line 27
    iput-object p1, p0, Lfvm;->d:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/card/views/ContentCardView;Lfvq;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 32
    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lfvm;->b:Lfvq;

    if-eq v0, p2, :cond_0

    .line 40
    iput-object p2, p0, Lfvm;->b:Lfvq;

    .line 41
    iput-object p1, p0, Lfvm;->c:Lcom/wandoujia/p4/card/views/ContentCardView;

    .line 42
    invoke-virtual {p1}, Lcom/wandoujia/p4/card/views/ContentCardView;->getCardView()Lfca;

    move-result-object v0

    invoke-virtual {p2}, Lfvq;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    .line 43
    iget-object v0, p0, Lfvm;->a:Lfut;

    invoke-virtual {p1}, Lcom/wandoujia/p4/card/views/ContentCardView;->getButton()Lfar;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lfut;->a(Lfar;Lfvq;)V

    .line 45
    invoke-static {}, Lfvh;->a()Lfvh;

    move-result-object v0

    iget-object v1, p2, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    invoke-virtual {v1}, Lcom/wandoujia/p4/gift/http/model/GiftModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p0}, Lfvh;->a(JLfvj;)V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/p4/gift/http/model/GiftModel;)V
    .locals 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lfvm;->c:Lcom/wandoujia/p4/card/views/ContentCardView;

    invoke-virtual {v0}, Lcom/wandoujia/p4/card/views/ContentCardView;->getCardView()Lfca;

    move-result-object v0

    iget-object v1, p0, Lfvm;->b:Lfvq;

    invoke-virtual {v1}, Lfvq;->a()Lcom/wandoujia/p4/card/models/CardViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lfbv;->a(Lfca;Lcom/wandoujia/p4/card/models/CardViewModel;)V

    .line 51
    iget-object v0, p0, Lfvm;->a:Lfut;

    iget-object v1, p0, Lfvm;->c:Lcom/wandoujia/p4/card/views/ContentCardView;

    invoke-virtual {v1}, Lcom/wandoujia/p4/card/views/ContentCardView;->getButton()Lfar;

    move-result-object v1

    new-instance v2, Lfvq;

    iget-object v3, p0, Lfvm;->d:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v2, p1, v3}, Lfvq;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    invoke-virtual {v0, v1, v2}, Lfut;->a(Lfar;Lfvq;)V

    .line 53
    return-void
.end method

.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    check-cast p1, Lcom/wandoujia/p4/card/views/ContentCardView;

    check-cast p2, Lfvq;

    invoke-virtual {p0, p1, p2}, Lfvm;->a(Lcom/wandoujia/p4/card/views/ContentCardView;Lfvq;)V

    return-void
.end method
