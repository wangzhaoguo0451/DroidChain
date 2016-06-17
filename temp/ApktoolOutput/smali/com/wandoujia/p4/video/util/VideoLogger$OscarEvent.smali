.class public final enum Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;
.super Ljava/lang/Enum;
.source "VideoLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

.field public static final enum VIDEO_DOWNLOAD_CANCEL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

.field public static final enum VIDEO_DOWNLOAD_FAIL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

.field public static final enum VIDEO_DOWNLOAD_START:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

.field public static final enum VIDEO_PLAY_CANCEL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

.field public static final enum VIDEO_PLAY_FAIL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

.field public static final enum VIDEO_PLAY_START:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;


# instance fields
.field private final event:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    const-string v1, "VIDEO_PLAY_START"

    const-string v2, "video_play_start"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_PLAY_START:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    .line 34
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    const-string v1, "VIDEO_DOWNLOAD_START"

    const-string v2, "video_download_start"

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_DOWNLOAD_START:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    .line 35
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    const-string v1, "VIDEO_DOWNLOAD_FAIL"

    const-string v2, "video_download_fail"

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_DOWNLOAD_FAIL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    .line 36
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    const-string v1, "VIDEO_PLAY_FAIL"

    const-string v2, "video_play_fail"

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_PLAY_FAIL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    .line 37
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    const-string v1, "VIDEO_PLAY_CANCEL"

    const-string v2, "video_play_cancel"

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_PLAY_CANCEL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    .line 38
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    const-string v1, "VIDEO_DOWNLOAD_CANCEL"

    const/4 v2, 0x5

    const-string v3, "video_download_cancel"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_DOWNLOAD_CANCEL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_PLAY_START:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_DOWNLOAD_START:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_DOWNLOAD_FAIL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_PLAY_FAIL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_PLAY_CANCEL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->VIDEO_DOWNLOAD_CANCEL:Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->$VALUES:[Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->event:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->$VALUES:[Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;

    return-object v0
.end method


# virtual methods
.method public final getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wandoujia/p4/video/util/VideoLogger$OscarEvent;->event:Ljava/lang/String;

    return-object v0
.end method
