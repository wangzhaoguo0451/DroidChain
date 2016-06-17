.class public Lcom/wandoujia/log/LogSender$SenderPolicyModel;
.super Ljava/lang/Object;
.source "LogSender.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private duration:J

.field private timePolicy:Lcom/wandoujia/log/LogSender$TimePolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/log/LogSender$TimePolicy;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/wandoujia/log/LogSender$SenderPolicyModel;->timePolicy:Lcom/wandoujia/log/LogSender$TimePolicy;

    .line 252
    iput-wide p2, p0, Lcom/wandoujia/log/LogSender$SenderPolicyModel;->duration:J

    .line 253
    return-void
.end method

.method static synthetic access$600(Lcom/wandoujia/log/LogSender$SenderPolicyModel;)Lcom/wandoujia/log/LogSender$TimePolicy;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/wandoujia/log/LogSender$SenderPolicyModel;->timePolicy:Lcom/wandoujia/log/LogSender$TimePolicy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wandoujia/log/LogSender$SenderPolicyModel;)J
    .locals 2
    .parameter

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/wandoujia/log/LogSender$SenderPolicyModel;->duration:J

    return-wide v0
.end method
