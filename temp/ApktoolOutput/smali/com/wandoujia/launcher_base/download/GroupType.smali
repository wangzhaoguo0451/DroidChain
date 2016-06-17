.class public final enum Lcom/wandoujia/launcher_base/download/GroupType;
.super Ljava/lang/Enum;
.source "GroupType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/download/GroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/download/GroupType;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum GAME_DATA_PACKET:Lcom/wandoujia/launcher_base/download/GroupType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8
    const-class v0, Lcom/wandoujia/launcher_base/download/GroupType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/wandoujia/launcher_base/download/GroupType;->$assertionsDisabled:Z

    .line 9
    new-instance v0, Lcom/wandoujia/launcher_base/download/GroupType;

    const-string v3, "GAME_DATA_PACKET"

    invoke-direct {v0, v3, v2}, Lcom/wandoujia/launcher_base/download/GroupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/GroupType;->GAME_DATA_PACKET:Lcom/wandoujia/launcher_base/download/GroupType;

    .line 8
    new-array v0, v1, [Lcom/wandoujia/launcher_base/download/GroupType;

    sget-object v1, Lcom/wandoujia/launcher_base/download/GroupType;->GAME_DATA_PACKET:Lcom/wandoujia/launcher_base/download/GroupType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/wandoujia/launcher_base/download/GroupType;->$VALUES:[Lcom/wandoujia/launcher_base/download/GroupType;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    return-void
.end method

.method private static generateDataPacketInfo(Ljava/util/List;)Leez;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_base/download/DownloadInfo;",
            ">;)",
            "Leez;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 19
    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadInfo;

    .line 22
    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    move-result-object v4

    sget-object v5, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->DATA_PACKET:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-ne v4, v5, :cond_0

    move-object v2, v0

    .line 25
    :cond_0
    invoke-interface {v0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    move-result-object v4

    sget-object v5, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-ne v4, v5, :cond_4

    :goto_1
    move-object v1, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-boolean v0, Lcom/wandoujia/launcher_base/download/GroupType;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_3
    new-instance v0, Leez;

    invoke-direct {v0, v1, v2}, Leez;-><init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public static generateDownloadInfoGroup(Lcom/wandoujia/launcher_base/download/GroupType;Ljava/util/List;)Leep;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/launcher_base/download/GroupType;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_base/download/DownloadInfo;",
            ">;)",
            "Leep;"
        }
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lefa;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/download/GroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 16
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    invoke-static {p1}, Lcom/wandoujia/launcher_base/download/GroupType;->generateDataPacketInfo(Ljava/util/List;)Leez;

    move-result-object v0

    goto :goto_0

    .line 12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/GroupType;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/launcher_base/download/GroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/GroupType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/download/GroupType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/launcher_base/download/GroupType;->$VALUES:[Lcom/wandoujia/launcher_base/download/GroupType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/download/GroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/download/GroupType;

    return-object v0
.end method
