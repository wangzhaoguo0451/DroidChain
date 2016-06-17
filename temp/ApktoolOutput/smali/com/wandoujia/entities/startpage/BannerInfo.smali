.class public Lcom/wandoujia/entities/startpage/BannerInfo;
.super Ljava/lang/Object;
.source "BannerInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private defaultAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private imageUrl:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/BannerInfo;->action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getDefaultAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/BannerInfo;->defaultAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/BannerInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/BannerInfo;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/BannerInfo;->title:Ljava/lang/String;

    return-object v0
.end method
