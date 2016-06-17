.class public final enum Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;
.super Ljava/lang/Enum;
.source "DownloadDBEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

.field public static final enum DOWNLOAD_DB_DATA_DELETED:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

.field public static final enum DOWNLOAD_DB_DATA_INSERTED:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

.field public static final enum DOWNLOAD_DB_DATA_UPDATED:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    const-string v1, "DOWNLOAD_DB_DATA_INSERTED"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;->DOWNLOAD_DB_DATA_INSERTED:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    .line 23
    new-instance v0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    const-string v1, "DOWNLOAD_DB_DATA_DELETED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;->DOWNLOAD_DB_DATA_DELETED:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    .line 24
    new-instance v0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    const-string v1, "DOWNLOAD_DB_DATA_UPDATED"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;->DOWNLOAD_DB_DATA_UPDATED:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;->DOWNLOAD_DB_DATA_INSERTED:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;->DOWNLOAD_DB_DATA_DELETED:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;->DOWNLOAD_DB_DATA_UPDATED:Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;->$VALUES:[Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;->$VALUES:[Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/event/DownloadDBEvent$Type;

    return-object v0
.end method
