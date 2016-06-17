.class public final Lcom/wandoujia/push2/protocol/proto/Upload;
.super Lcom/squareup/wire/Message;
.source "Upload.java"


# instance fields
.field public final ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
    .end annotation
.end field

.field public final req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/wandoujia/push2/protocol/proto/Upload$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 26
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload;->ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    .line 27
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Upload$Builder;->req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload;->req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/push2/protocol/proto/Upload$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/wandoujia/push2/protocol/proto/Upload;-><init>(Lcom/wandoujia/push2/protocol/proto/Upload$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    if-ne p1, p0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/push2/protocol/proto/Upload;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 34
    :cond_2
    check-cast p1, Lcom/wandoujia/push2/protocol/proto/Upload;

    .line 35
    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Upload;->ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    iget-object v3, p1, Lcom/wandoujia/push2/protocol/proto/Upload;->ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/push2/protocol/proto/Upload;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Upload;->req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    iget-object v3, p1, Lcom/wandoujia/push2/protocol/proto/Upload;->req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/push2/protocol/proto/Upload;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 41
    iget v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload;->hashCode:I

    .line 42
    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload;->ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload;->ack:Lcom/wandoujia/push2/protocol/proto/Upload$Ack;

    invoke-virtual {v0}, Lcom/wandoujia/push2/protocol/proto/Upload$Ack;->hashCode()I

    move-result v0

    .line 44
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Upload;->req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/push2/protocol/proto/Upload;->req:Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    invoke-virtual {v1}, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload;->hashCode:I

    .line 47
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 43
    goto :goto_0
.end method
