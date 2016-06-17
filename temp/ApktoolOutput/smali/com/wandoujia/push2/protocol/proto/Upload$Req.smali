.class public final Lcom/wandoujia/push2/protocol/proto/Upload$Req;
.super Lcom/squareup/wire/Message;
.source "Upload.java"


# static fields
.field public static final DEFAULT_LASTID:Ljava/lang/Long; = null

.field public static final DEFAULT_UDID:Ljava/lang/String; = ""


# instance fields
.field public final lastId:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final udid:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->DEFAULT_LASTID:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 143
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->udid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->udid:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;->lastId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->lastId:Ljava/lang/Long;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/wandoujia/push2/protocol/proto/Upload$Req;-><init>(Lcom/wandoujia/push2/protocol/proto/Upload$Req$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    if-ne p1, p0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 151
    :cond_2
    check-cast p1, Lcom/wandoujia/push2/protocol/proto/Upload$Req;

    .line 152
    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->udid:Ljava/lang/String;

    iget-object v3, p1, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->udid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->lastId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->lastId:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 158
    iget v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->hashCode:I

    .line 159
    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->udid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->udid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 161
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->lastId:Ljava/lang/Long;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->lastId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 162
    iput v0, p0, Lcom/wandoujia/push2/protocol/proto/Upload$Req;->hashCode:I

    .line 164
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 160
    goto :goto_0
.end method
