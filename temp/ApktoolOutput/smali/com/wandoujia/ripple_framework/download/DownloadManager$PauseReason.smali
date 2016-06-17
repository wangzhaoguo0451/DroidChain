.class public final enum Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;
.super Ljava/lang/Enum;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

.field public static final enum APP:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

.field public static final enum MEDIA:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

.field public static final enum NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;


# instance fields
.field private final pauseStatus:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 633
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    const-string v1, "APP"

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_APP:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;-><init>(Ljava/lang/String;ILcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->APP:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    .line 634
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    const-string v1, "NETWORK"

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;-><init>(Ljava/lang/String;ILcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    .line 635
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    const-string v1, "MEDIA"

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_MEDIA:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;-><init>(Ljava/lang/String;ILcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->MEDIA:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    .line 632
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->APP:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->MEDIA:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->$VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 639
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 640
    iput-object p3, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->pauseStatus:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 641
    return-void
.end method

.method static synthetic access$1000(Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;
    .locals 1
    .parameter

    .prologue
    .line 632
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->pauseStatus:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;
    .locals 1
    .parameter

    .prologue
    .line 632
    const-class v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;
    .locals 1

    .prologue
    .line 632
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->$VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    return-object v0
.end method
