.class public Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;
.super Ljava/lang/Object;
.source "LogSender.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private duration:J

.field private timePolicy:Lcom/wandoujia/logv3/LogSender$TimePolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/LogSender$TimePolicy;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;->timePolicy:Lcom/wandoujia/logv3/LogSender$TimePolicy;

    .line 277
    iput-wide p2, p0, Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;->duration:J

    .line 278
    return-void
.end method

.method static synthetic access$400(Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;)Lcom/wandoujia/logv3/LogSender$TimePolicy;
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;->timePolicy:Lcom/wandoujia/logv3/LogSender$TimePolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;)J
    .locals 2
    .parameter

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/wandoujia/logv3/LogSender$SenderPolicyModel;->duration:J

    return-wide v0
.end method
