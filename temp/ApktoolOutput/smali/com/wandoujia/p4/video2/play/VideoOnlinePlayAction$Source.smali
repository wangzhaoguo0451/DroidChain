.class public final enum Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;
.super Ljava/lang/Enum;
.source "VideoOnlinePlayAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

.field public static final enum DETAIL:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

.field public static final enum LIST:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

.field public static final enum RECORD:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

.field public static final enum SOURCE_CHANGE:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

.field public static final enum UNKNOWN:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

.field public static final enum WEB:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    new-instance v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    const-string v1, "DETAIL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->DETAIL:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    .line 85
    new-instance v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->LIST:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    .line 86
    new-instance v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    const-string v1, "RECORD"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->RECORD:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    .line 87
    new-instance v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    const-string v1, "SOURCE_CHANGE"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->SOURCE_CHANGE:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    .line 88
    new-instance v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    const-string v1, "WEB"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->WEB:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    .line 89
    new-instance v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->UNKNOWN:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    sget-object v1, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->DETAIL:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->LIST:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->RECORD:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->SOURCE_CHANGE:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->WEB:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->UNKNOWN:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->$VALUES:[Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;
    .locals 1
    .parameter

    .prologue
    .line 83
    const-class v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->$VALUES:[Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    return-object v0
.end method
