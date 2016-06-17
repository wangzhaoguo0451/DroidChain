.class public Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanPkgs;
.super Ljava/lang/Object;
.source "GiftBeanModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private gifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftDetail;",
            ">;"
        }
    .end annotation
.end field

.field private pn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGifts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanPkgs;->gifts:Ljava/util/List;

    return-object v0
.end method

.method public getPn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanPkgs;->pn:Ljava/lang/String;

    return-object v0
.end method
