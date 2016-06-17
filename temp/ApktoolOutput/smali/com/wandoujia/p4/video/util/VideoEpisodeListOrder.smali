.class public final enum Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;
.super Ljava/lang/Enum;
.source "VideoEpisodeListOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

.field public static final enum ASC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

.field public static final enum DESC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;


# instance fields
.field private orderNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    const-string v1, "DESC"

    const-string v2, "1"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->DESC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    .line 10
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    const-string v1, "ASC"

    const-string v2, "0"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->ASC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->DESC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->ASC:Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->$VALUES:[Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->orderNum:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->$VALUES:[Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;

    return-object v0
.end method


# virtual methods
.method public final getOrderNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/p4/video/util/VideoEpisodeListOrder;->orderNum:Ljava/lang/String;

    return-object v0
.end method
