.class public final enum Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;
.super Ljava/lang/Enum;
.source "VideoPlayModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

.field public static final enum APP:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

.field public static final enum APP_NEED_INSTALL:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

.field public static final enum HTML5:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

.field public static final enum WAP:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    const-string v1, "APP"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->APP:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    .line 307
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    const-string v1, "HTML5"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->HTML5:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    .line 308
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    const-string v1, "WAP"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->WAP:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    .line 309
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    const-string v1, "APP_NEED_INSTALL"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->APP_NEED_INSTALL:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    .line 305
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->APP:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->HTML5:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->WAP:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->APP_NEED_INSTALL:Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->$VALUES:[Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

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
    .line 305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;
    .locals 1
    .parameter

    .prologue
    .line 305
    const-class v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->$VALUES:[Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/model/VideoPlayModel$PlayType;

    return-object v0
.end method
