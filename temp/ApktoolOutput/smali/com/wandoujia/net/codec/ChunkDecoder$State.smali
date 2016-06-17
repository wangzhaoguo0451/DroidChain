.class public final enum Lcom/wandoujia/net/codec/ChunkDecoder$State;
.super Ljava/lang/Enum;
.source "ChunkDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/net/codec/ChunkDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/net/codec/ChunkDecoder$State;

.field public static final enum CHUNK:Lcom/wandoujia/net/codec/ChunkDecoder$State;

.field public static final enum CHUNK_CR:Lcom/wandoujia/net/codec/ChunkDecoder$State;

.field public static final enum CHUNK_CRLF:Lcom/wandoujia/net/codec/ChunkDecoder$State;

.field public static final enum CHUNK_LEN:Lcom/wandoujia/net/codec/ChunkDecoder$State;

.field public static final enum CHUNK_LEN_CR:Lcom/wandoujia/net/codec/ChunkDecoder$State;

.field public static final enum COMPLETE:Lcom/wandoujia/net/codec/ChunkDecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;

    const-string v1, "CHUNK_LEN"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/net/codec/ChunkDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_LEN:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 14
    new-instance v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;

    const-string v1, "CHUNK_LEN_CR"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/net/codec/ChunkDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_LEN_CR:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 15
    new-instance v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;

    const-string v1, "CHUNK"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/net/codec/ChunkDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 16
    new-instance v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;

    const-string v1, "CHUNK_CR"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/net/codec/ChunkDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_CR:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 17
    new-instance v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;

    const-string v1, "CHUNK_CRLF"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/net/codec/ChunkDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_CRLF:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 18
    new-instance v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;

    const-string v1, "COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/codec/ChunkDecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->COMPLETE:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/net/codec/ChunkDecoder$State;

    sget-object v1, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_LEN:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_LEN_CR:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_CR:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/net/codec/ChunkDecoder$State;->CHUNK_CRLF:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/net/codec/ChunkDecoder$State;->COMPLETE:Lcom/wandoujia/net/codec/ChunkDecoder$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->$VALUES:[Lcom/wandoujia/net/codec/ChunkDecoder$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/net/codec/ChunkDecoder$State;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/net/codec/ChunkDecoder$State;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/wandoujia/net/codec/ChunkDecoder$State;->$VALUES:[Lcom/wandoujia/net/codec/ChunkDecoder$State;

    invoke-virtual {v0}, [Lcom/wandoujia/net/codec/ChunkDecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/net/codec/ChunkDecoder$State;

    return-object v0
.end method
