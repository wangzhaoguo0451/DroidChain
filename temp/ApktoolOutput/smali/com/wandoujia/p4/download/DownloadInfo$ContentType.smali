.class public final enum Lcom/wandoujia/p4/download/DownloadInfo$ContentType;
.super Ljava/lang/Enum;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/download/DownloadInfo$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum APP:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum BOOK:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum COMIC:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum DATA_PACKET:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum DPK:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum GPK:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum IMAGE:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum MISC:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum MUSIC:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum PATCH:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum PLUGIN:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum UNKNOWN:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum VIDEO:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

.field public static final enum WEB_CACHE:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "APP"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->MUSIC:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->VIDEO:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->IMAGE:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "BOOK"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->BOOK:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "COMIC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->COMIC:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "PATCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->PATCH:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "MISC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->MISC:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "DATA_PACKET"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->DATA_PACKET:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->UNKNOWN:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "PLUGIN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->PLUGIN:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "WEB_CACHE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->WEB_CACHE:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    .line 46
    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "GPK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->GPK:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    new-instance v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    const-string v1, "DPK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->DPK:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    .line 43
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    sget-object v1, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->MUSIC:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->VIDEO:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->IMAGE:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->BOOK:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->COMIC:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->PATCH:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->MISC:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->DATA_PACKET:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->UNKNOWN:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->PLUGIN:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->WEB_CACHE:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->GPK:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->DPK:Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->$VALUES:[Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/download/DownloadInfo$ContentType;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/download/DownloadInfo$ContentType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->$VALUES:[Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/download/DownloadInfo$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/download/DownloadInfo$ContentType;

    return-object v0
.end method
