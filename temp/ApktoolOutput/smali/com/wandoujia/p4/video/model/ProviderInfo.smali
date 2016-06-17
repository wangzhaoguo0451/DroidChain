.class public Lcom/wandoujia/p4/video/model/ProviderInfo;
.super Ljava/lang/Object;
.source "ProviderInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allowLocalPlay:Z

.field private appDownloadUrl:Ljava/lang/String;

.field private appIntentType:I

.field private appVersionCode:I

.field private componentName:Ljava/lang/String;

.field private downloadWithFlv:Z

.field private iconUrl:Ljava/lang/String;

.field private localPlayIntent:Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;

.field private localPlayPathPlaceholder:Ljava/lang/String;

.field private needChangeSuffix:Z

.field private packageName:Ljava/lang/String;

.field private playWithFlv:Z

.field private playWithPlayExp:Z

.field private preferPrivateDownloadSource:Z

.field private privateSuffix:Ljava/lang/String;

.field private promotVersionCode:I

.field private title:Ljava/lang/String;

.field private useCommonDownloadUrls:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method


# virtual methods
.method public getAllowLocalPlay()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->allowLocalPlay:Z

    return v0
.end method

.method public getAppDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->appDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIntentType()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->appIntentType:I

    return v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->appVersionCode:I

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPlayIntent()Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->localPlayIntent:Lcom/wandoujia/p4/video/model/ProviderInfo$LocalPlayIntent;

    return-object v0
.end method

.method public getLocalPlayPathPlaceholder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->localPlayPathPlaceholder:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->privateSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotVersionCode()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->promotVersionCode:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isDownloadWithFlv()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->downloadWithFlv:Z

    return v0
.end method

.method public isNeedChangeSuffix()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->needChangeSuffix:Z

    return v0
.end method

.method public isPlayWithFlv()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->playWithFlv:Z

    return v0
.end method

.method public isPlayWithPlayExp()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->playWithPlayExp:Z

    return v0
.end method

.method public isPreferPrivateDownloadSource()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->preferPrivateDownloadSource:Z

    return v0
.end method

.method public isUseCommonDownloadUrls()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/wandoujia/p4/video/model/ProviderInfo;->useCommonDownloadUrls:Z

    return v0
.end method
