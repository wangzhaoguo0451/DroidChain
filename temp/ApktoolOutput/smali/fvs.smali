.class public Lfvs;
.super Ljava/lang/Object;
.source "GiftModelConverter.java"

# interfaces
.implements Lfza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfza",
        "<",
        "Lcom/wandoujia/p4/gift/http/model/GiftModel;",
        "Lfvq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lfvs;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 18
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/wandoujia/p4/gift/http/model/GiftModel;

    new-instance v0, Lfvq;

    iget-object v1, p0, Lfvs;->a:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-direct {v0, p1, v1}, Lfvq;-><init>(Lcom/wandoujia/p4/gift/http/model/GiftModel;Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lfvs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
