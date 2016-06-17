.class public Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;
.super Ljava/lang/Object;
.source "SimpleAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private appType:Ljava/lang/String;

.field private icons:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;

.field private packageName:Ljava/lang/String;

.field private pinyinName:Ljava/lang/String;

.field private startCount:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)I
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->pinyinName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->pinyinName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 74
    const/4 v0, -0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->pinyinName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 10
    check-cast p1, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    invoke-virtual {p0, p1}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->compareTo(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;)I

    move-result v0

    return v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public getIcons()Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->icons:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyinName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->pinyinName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartCount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->startCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAppType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->appType:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setIcons(Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->icons:Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo$Icon;

    .line 49
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->packageName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setPinyinName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->pinyinName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setStartCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->startCount:I

    .line 65
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->title:Ljava/lang/String;

    .line 41
    return-void
.end method
