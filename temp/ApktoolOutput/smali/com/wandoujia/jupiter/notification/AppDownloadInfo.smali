.class public Lcom/wandoujia/jupiter/notification/AppDownloadInfo;
.super Ljava/lang/Object;
.source "AppDownloadInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field downloadUrl:Ljava/lang/String;

.field iconPath:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/AppDownloadInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/AppDownloadInfo;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/AppDownloadInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/AppDownloadInfo;->title:Ljava/lang/String;

    return-object v0
.end method
