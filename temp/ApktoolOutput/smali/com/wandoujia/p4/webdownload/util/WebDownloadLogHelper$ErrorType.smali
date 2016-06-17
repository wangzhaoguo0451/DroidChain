.class public final enum Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;
.super Ljava/lang/Enum;
.source "WebDownloadLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

.field public static final enum ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

.field public static final enum ERROR_DOWNLOAD_STRATEGY:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

.field public static final enum ERROR_HTTP_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

.field public static final enum ERROR_ILLEGAL_ARGUMENT:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

.field public static final enum ERROR_JAVA_SCRIPT_INTERCEPTER:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

.field public static final enum ERROR_JAVA_SCRIPT_MESSAGE:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

.field public static final enum ERROR_M3U8_PARSE:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

.field public static final enum ERROR_START_PROXY:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

.field public static final enum ERROR_STRATEGY_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    const-string v1, "ERROR_START_PROXY"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_START_PROXY:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    .line 42
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    const-string v1, "ERROR_HTTP_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_HTTP_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    .line 43
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    const-string v1, "ERROR_STRATEGY_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_STRATEGY_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    .line 45
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    const-string v1, "ERROR_CACHE_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    .line 46
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    const-string v1, "ERROR_DOWNLOAD_STRATEGY"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_DOWNLOAD_STRATEGY:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    .line 48
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    const-string v1, "ERROR_JAVA_SCRIPT_MESSAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_JAVA_SCRIPT_MESSAGE:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    .line 50
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    const-string v1, "ERROR_JAVA_SCRIPT_INTERCEPTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_JAVA_SCRIPT_INTERCEPTER:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    .line 51
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    const-string v1, "ERROR_M3U8_PARSE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_M3U8_PARSE:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    .line 52
    new-instance v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    const-string v1, "ERROR_ILLEGAL_ARGUMENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_ILLEGAL_ARGUMENT:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    sget-object v1, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_START_PROXY:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_HTTP_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_STRATEGY_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_CACHE_ERROR:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_DOWNLOAD_STRATEGY:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_JAVA_SCRIPT_MESSAGE:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_JAVA_SCRIPT_INTERCEPTER:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_M3U8_PARSE:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_ILLEGAL_ARGUMENT:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->$VALUES:[Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->$VALUES:[Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    return-object v0
.end method
