.class public final Lcom/wandoujia/push2/protocol/proto/Download$Msg;
.super Lcom/squareup/wire/Message;
.source "Download.java"


# static fields
.field public static final DEFAULT_BODY:Lcom/squareup/wire/ByteString;

.field public static final DEFAULT_ID:Ljava/lang/Long;


# instance fields
.field public final body:Lcom/squareup/wire/ByteString;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final id:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REQUIRED:Lcom/squareup/wire/Message$Label;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->DEFAULT_ID:Ljava/lang/Long;

    .line 136
    sget-object v0, Lcom/squareup/wire/ByteString;->EMPTY:Lcom/squareup/wire/ByteString;

    sput-object v0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->DEFAULT_BODY:Lcom/squareup/wire/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message$Builder;)V

    .line 149
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;->id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->id:Ljava/lang/Long;

    .line 150
    iget-object v0, p1, Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;->body:Lcom/squareup/wire/ByteString;

    iput-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->body:Lcom/squareup/wire/ByteString;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;Ld;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/wandoujia/push2/protocol/proto/Download$Msg;-><init>(Lcom/wandoujia/push2/protocol/proto/Download$Msg$Builder;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    if-ne p1, p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    instance-of v2, p1, Lcom/wandoujia/push2/protocol/proto/Download$Msg;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 157
    :cond_2
    check-cast p1, Lcom/wandoujia/push2/protocol/proto/Download$Msg;

    .line 158
    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->id:Ljava/lang/Long;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->body:Lcom/squareup/wire/ByteString;

    iget-object v3, p1, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->body:Lcom/squareup/wire/ByteString;

    invoke-virtual {p0, v2, v3}, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 164
    iget v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->hashCode:I

    .line 165
    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->id:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 167
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->body:Lcom/squareup/wire/ByteString;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->body:Lcom/squareup/wire/ByteString;

    invoke-virtual {v1}, Lcom/squareup/wire/ByteString;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 168
    iput v0, p0, Lcom/wandoujia/push2/protocol/proto/Download$Msg;->hashCode:I

    .line 170
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 166
    goto :goto_0
.end method
