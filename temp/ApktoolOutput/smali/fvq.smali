.class public final Lfvq;
.super Ljava/lang/Object;
.source "GiftCardModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;


# instance fields
.field public a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

.field private b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    .line 16
    iput-object p2, p0, Lfvq;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/card/models/CardViewModel;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;

    iget-object v1, p0, Lfvq;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel;

    iget-object v2, p0, Lfvq;->b:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    return-object v0
.end method
