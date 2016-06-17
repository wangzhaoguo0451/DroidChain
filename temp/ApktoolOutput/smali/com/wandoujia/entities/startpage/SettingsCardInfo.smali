.class public Lcom/wandoujia/entities/startpage/SettingsCardInfo;
.super Ljava/lang/Object;
.source "SettingsCardInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private defaultAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

.field private id:Ljava/lang/String;

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
    .line 28
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SettingsCardInfo;->action:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getDefaultAction()Lcom/wandoujia/entities/startpage/StartFeedActionInfo;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SettingsCardInfo;->defaultAction:Lcom/wandoujia/entities/startpage/StartFeedActionInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SettingsCardInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/entities/startpage/SettingsCardInfo;->title:Ljava/lang/String;

    return-object v0
.end method
