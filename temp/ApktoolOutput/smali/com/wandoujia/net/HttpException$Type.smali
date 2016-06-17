.class public final enum Lcom/wandoujia/net/HttpException$Type;
.super Ljava/lang/Enum;
.source "HttpException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/net/HttpException$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/net/HttpException$Type;

.field public static final enum BAD_RESPONSE:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum CHUNK_ERROR:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum CONNECTION_TIMEOUT:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum CONNECT_ERROR:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum INVALID_URL:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum NOT_HTTP:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum REQUEST_BODY_ERROR:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum RESOLVE_IP_FAILED:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum SOCKET_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum TRANSPORT_TIMEOUT:Lcom/wandoujia/net/HttpException$Type;

.field public static final enum UNSUPPORT_TRANSFER_ENCODING:Lcom/wandoujia/net/HttpException$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "INVALID_URL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->INVALID_URL:Lcom/wandoujia/net/HttpException$Type;

    .line 10
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "RESOLVE_IP_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->RESOLVE_IP_FAILED:Lcom/wandoujia/net/HttpException$Type;

    .line 11
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "CONNECT_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->CONNECT_ERROR:Lcom/wandoujia/net/HttpException$Type;

    .line 12
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "SOCKET_IO_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->SOCKET_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    .line 14
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "DOWNLOAD_IO_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    .line 15
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "NOT_HTTP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->NOT_HTTP:Lcom/wandoujia/net/HttpException$Type;

    .line 16
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "CHUNK_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->CHUNK_ERROR:Lcom/wandoujia/net/HttpException$Type;

    .line 17
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "UNSUPPORT_TRANSFER_ENCODING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->UNSUPPORT_TRANSFER_ENCODING:Lcom/wandoujia/net/HttpException$Type;

    .line 18
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "REQUEST_BODY_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->REQUEST_BODY_ERROR:Lcom/wandoujia/net/HttpException$Type;

    .line 19
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "HTTPS_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    .line 20
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "BAD_RESPONSE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->BAD_RESPONSE:Lcom/wandoujia/net/HttpException$Type;

    .line 21
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "CONNECTION_TIMEOUT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->CONNECTION_TIMEOUT:Lcom/wandoujia/net/HttpException$Type;

    .line 22
    new-instance v0, Lcom/wandoujia/net/HttpException$Type;

    const-string v1, "TRANSPORT_TIMEOUT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpException$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->TRANSPORT_TIMEOUT:Lcom/wandoujia/net/HttpException$Type;

    .line 8
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/wandoujia/net/HttpException$Type;

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->INVALID_URL:Lcom/wandoujia/net/HttpException$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->RESOLVE_IP_FAILED:Lcom/wandoujia/net/HttpException$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->CONNECT_ERROR:Lcom/wandoujia/net/HttpException$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->SOCKET_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/net/HttpException$Type;->DOWNLOAD_IO_ERROR:Lcom/wandoujia/net/HttpException$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->NOT_HTTP:Lcom/wandoujia/net/HttpException$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->CHUNK_ERROR:Lcom/wandoujia/net/HttpException$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->UNSUPPORT_TRANSFER_ENCODING:Lcom/wandoujia/net/HttpException$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->REQUEST_BODY_ERROR:Lcom/wandoujia/net/HttpException$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->HTTPS_ERROR:Lcom/wandoujia/net/HttpException$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->BAD_RESPONSE:Lcom/wandoujia/net/HttpException$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->CONNECTION_TIMEOUT:Lcom/wandoujia/net/HttpException$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/net/HttpException$Type;->TRANSPORT_TIMEOUT:Lcom/wandoujia/net/HttpException$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/net/HttpException$Type;->$VALUES:[Lcom/wandoujia/net/HttpException$Type;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/net/HttpException$Type;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/net/HttpException$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/net/HttpException$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/net/HttpException$Type;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/net/HttpException$Type;->$VALUES:[Lcom/wandoujia/net/HttpException$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/net/HttpException$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/net/HttpException$Type;

    return-object v0
.end method
