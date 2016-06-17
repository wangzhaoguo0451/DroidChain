.class public Lcom/wandoujia/entities/app/BannerInfo;
.super Ljava/lang/Object;
.source "BannerInfo.java"

# interfaces
.implements Lcom/wandoujia/entities/app/IBannerInfo;
.implements Ljava/io/Serializable;


# instance fields
.field private alias:Ljava/lang/String;

.field private app:Lcom/wandoujia/entities/app/AppLiteInfo;

.field private banner:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp()Lcom/wandoujia/entities/app/AppLiteInfo;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/entities/app/BannerInfo;->app:Lcom/wandoujia/entities/app/AppLiteInfo;

    return-object v0
.end method

.method public getAppSpecialAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wandoujia/entities/app/BannerInfo;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getBanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/app/BannerInfo;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wandoujia/entities/app/BannerInfo;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/entities/app/BannerInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/wandoujia/entities/app/BannerInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/entities/app/BannerInfo;->url:Ljava/lang/String;

    return-object v0
.end method
