.class public final enum Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;
.super Ljava/lang/Enum;
.source "IMusicWebDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

.field public static final enum CANCELLED:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

.field public static final enum OK:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

.field public static final enum PAGE_DOWNLOAD_ERROR:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

.field public static final enum PAGE_LOAD_TIMEOUT:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

.field public static final enum SRC_FOUND_TIMEOUT:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

.field public static final enum SRC_NOT_FOUND:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    const-string v1, "PAGE_LOAD_TIMEOUT"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->PAGE_LOAD_TIMEOUT:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    new-instance v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    const-string v1, "SRC_FOUND_TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->SRC_FOUND_TIMEOUT:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    new-instance v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    const-string v1, "SRC_NOT_FOUND"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->SRC_NOT_FOUND:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    new-instance v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->OK:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    new-instance v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    const-string v1, "PAGE_DOWNLOAD_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->PAGE_DOWNLOAD_ERROR:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    new-instance v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->CANCELLED:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->PAGE_LOAD_TIMEOUT:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->SRC_FOUND_TIMEOUT:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->SRC_NOT_FOUND:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->OK:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->PAGE_DOWNLOAD_ERROR:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->CANCELLED:Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->$VALUES:[Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->$VALUES:[Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/webdownload/download/bridge/IMusicWebDownloadManager$StatusCode;

    return-object v0
.end method
