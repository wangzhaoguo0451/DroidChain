.class public final enum Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;
.super Ljava/lang/Enum;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum CANCELED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum DELETED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum FAILED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum PAUSED_BY_APP:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum PAUSED_BY_MEDIA:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum PAUSED_BY_NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum PAUSED_BY_OTHERS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum PENDING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

.field public static final enum SUCCESS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;


# instance fields
.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 16
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 17
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 18
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "DELETED"

    invoke-direct {v0, v1, v7, v7}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DELETED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 19
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v8, v8}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 20
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 21
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "PAUSED_BY_APP"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_APP:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 22
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "PAUSED_BY_MEDIA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_MEDIA:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 23
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "PAUSED_BY_NETWORK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 24
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "PAUSED_BY_OTHERS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_OTHERS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 25
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "CREATED"

    const/16 v2, 0x9

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 26
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const-string v1, "DOWNLOADING"

    const/16 v2, 0xa

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    .line 15
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DELETED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v2, v0, v1

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_APP:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v1, v0, v4

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_MEDIA:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_OTHERS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->$VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->priority:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->$VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    return-object v0
.end method


# virtual methods
.method public final getPriority()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->priority:I

    return v0
.end method

.method public final isComplete()Z
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->priority:I

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    iget v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->priority:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDownloading()Z
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFailed()Z
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPaused()Z
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->priority:I

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_APP:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    iget v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->priority:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPending()Z
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSucceed()Z
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
