.class public final enum Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;
.super Ljava/lang/Enum;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

.field public static final enum MD5:Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

.field public static final enum PF5:Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    const-string v1, "MD5"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;->MD5:Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    const-string v1, "PF5"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;->PF5:Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    sget-object v1, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;->MD5:Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;->PF5:Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;->$VALUES:[Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;
    .locals 1
    .parameter

    .prologue
    .line 64
    const-class v0, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;->$VALUES:[Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/download/DownloadRequest$VerifyType;

    return-object v0
.end method
