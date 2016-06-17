.class public final enum Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;
.super Ljava/lang/Enum;
.source "PlayExpDownloadTask2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

.field public static final enum DOWNLOAD:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

.field public static final enum GET_URLS:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    const-string v1, "GET_URLS"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->GET_URLS:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    new-instance v0, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->DOWNLOAD:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    sget-object v1, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->GET_URLS:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->DOWNLOAD:Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->$VALUES:[Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->$VALUES:[Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    invoke-virtual {v0}, [Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/download2/PlayExpDownloadTask2$DownloadStep;

    return-object v0
.end method
