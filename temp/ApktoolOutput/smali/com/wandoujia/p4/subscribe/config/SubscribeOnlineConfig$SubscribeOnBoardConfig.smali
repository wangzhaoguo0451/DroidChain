.class public Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig$SubscribeOnBoardConfig;
.super Ljava/lang/Object;
.source "SubscribeOnlineConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x17d2672bf2224b7fL


# instance fields
.field private login:Z

.field private notification:Z

.field private register:Z

.field private update:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showWhenLogined()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig$SubscribeOnBoardConfig;->login:Z

    return v0
.end method

.method public showWhenNotificationClicked()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig$SubscribeOnBoardConfig;->notification:Z

    return v0
.end method

.method public showWhenRegisterd()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig$SubscribeOnBoardConfig;->register:Z

    return v0
.end method

.method public showWhenUpdated()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig$SubscribeOnBoardConfig;->update:Z

    return v0
.end method
