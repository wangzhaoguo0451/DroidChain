.class public Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;
.super Ljava/lang/Object;
.source "PushEntityV1.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private intentUri:Ljava/lang/String;

.field private target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;->intentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;->target:Ljava/lang/String;

    return-object v0
.end method

.method public setIntentUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;->intentUri:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wandoujia/push/protocol/PushEntityV1$IntentV2;->target:Ljava/lang/String;

    .line 109
    return-void
.end method
