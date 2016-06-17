.class public final enum Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;
.super Ljava/lang/Enum;
.source "GameFolderUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

.field public static final enum BOOK:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

.field public static final enum CASUAL:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

.field public static final enum EXCLUSIVE:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

.field public static final enum NORMAL:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;


# instance fields
.field private final source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    const-string v1, "NORMAL"

    const-string v2, "game_launcher_normal_suggestion"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->NORMAL:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    .line 53
    new-instance v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    const-string v1, "EXCLUSIVE"

    const-string v2, "game_launcher_exclusive_suggestion"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->EXCLUSIVE:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    .line 54
    new-instance v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    const-string v1, "CASUAL"

    const-string v2, "game_launcher_casual_suggestion"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->CASUAL:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    .line 55
    new-instance v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    const-string v1, "BOOK"

    const-string v2, "game_vertical_booked_game"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->BOOK:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    sget-object v1, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->NORMAL:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->EXCLUSIVE:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->CASUAL:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->BOOK:Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->$VALUES:[Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->source:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->$VALUES:[Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;

    return-object v0
.end method


# virtual methods
.method public final getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil$DownloadSource;->source:Ljava/lang/String;

    return-object v0
.end method
