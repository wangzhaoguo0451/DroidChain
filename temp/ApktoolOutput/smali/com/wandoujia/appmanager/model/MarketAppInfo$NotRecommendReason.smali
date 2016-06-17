.class public Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;
.super Ljava/lang/Object;
.source "MarketAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private signatureMatch:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;->signatureMatch:Z

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isSignatureMatch()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;->signatureMatch:Z

    return v0
.end method
