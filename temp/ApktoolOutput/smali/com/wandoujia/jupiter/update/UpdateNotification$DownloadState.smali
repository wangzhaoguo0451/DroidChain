.class public final enum Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;
.super Ljava/lang/Enum;
.source "UpdateNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

.field public static final enum DOWNLOADING:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

.field public static final enum FAILED:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

.field public static final enum SUCCESS:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    new-instance v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->SUCCESS:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    new-instance v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->FAILED:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    new-instance v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->DOWNLOADING:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    .line 304
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    sget-object v1, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->SUCCESS:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->FAILED:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->DOWNLOADING:Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->$VALUES:[Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

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
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;
    .locals 1
    .parameter

    .prologue
    .line 304
    const-class v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->$VALUES:[Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/update/UpdateNotification$DownloadState;

    return-object v0
.end method
