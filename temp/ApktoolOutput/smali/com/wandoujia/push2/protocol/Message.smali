.class public Lcom/wandoujia/push2/protocol/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BODY_PROTOCOL_NORMAL:I = 0x1

.field public static final CHANNEL_NORMAL:Ljava/lang/String; = "normal"

.field public static final CHANNEL_PAID:Ljava/lang/String; = "paid"


# instance fields
.field private apps:[Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "apps"
    .end annotation
.end field

.field private body:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "body"
    .end annotation
.end field

.field private bodyProtocol:I
    .annotation runtime Lcwj;
        a = "body_protocol"
    .end annotation
.end field

.field private channel:[Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "channel"
    .end annotation
.end field

.field private expired:J
    .annotation runtime Lcwj;
        a = "expired"
    .end annotation
.end field

.field private transient id:J


# direct methods
.method public constructor <init>(JJILjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/wandoujia/push2/protocol/Message;-><init>(JJILjava/lang/String;[Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/wandoujia/push2/protocol/Message;->id:J

    .line 52
    iput-wide p3, p0, Lcom/wandoujia/push2/protocol/Message;->expired:J

    .line 53
    iput p5, p0, Lcom/wandoujia/push2/protocol/Message;->bodyProtocol:I

    .line 54
    iput-object p6, p0, Lcom/wandoujia/push2/protocol/Message;->body:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/wandoujia/push2/protocol/Message;->channel:[Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getApps()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/Message;->apps:[Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/Message;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyProtocol()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/wandoujia/push2/protocol/Message;->bodyProtocol:I

    return v0
.end method

.method public getChannel()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/Message;->channel:[Ljava/lang/String;

    return-object v0
.end method

.method public getExpired()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/wandoujia/push2/protocol/Message;->expired:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/wandoujia/push2/protocol/Message;->id:J

    return-wide v0
.end method

.method public setId(J)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/wandoujia/push2/protocol/Message;->id:J

    .line 64
    return-void
.end method
