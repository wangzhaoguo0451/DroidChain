.class public Lcom/wandoujia/p4/gift/http/model/GiftInfo;
.super Ljava/lang/Object;
.source "GiftInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field gifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;",
            ">;"
        }
    .end annotation
.end field

.field pn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
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
            "Lcom/wandoujia/p4/gift/http/model/GiftInfo$GiftDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftInfo;->gifts:Ljava/util/List;

    return-object v0
.end method

.method public getPn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftInfo;->pn:Ljava/lang/String;

    return-object v0
.end method
