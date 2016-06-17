.class public Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig;
.super Ljava/lang/Object;
.source "SubscribeOnlineConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x596f2e7184b8e649L


# instance fields
.field private onBoard:Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig$SubscribeOnBoardConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getOnBoard()Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig$SubscribeOnBoardConfig;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig;->onBoard:Lcom/wandoujia/p4/subscribe/config/SubscribeOnlineConfig$SubscribeOnBoardConfig;

    return-object v0
.end method
