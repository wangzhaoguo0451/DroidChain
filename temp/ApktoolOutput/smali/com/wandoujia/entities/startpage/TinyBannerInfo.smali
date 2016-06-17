.class public Lcom/wandoujia/entities/startpage/TinyBannerInfo;
.super Ljava/lang/Object;
.source "TinyBannerInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private defaultAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/TinyBannerInfo;->defaultAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/TinyBannerInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method
