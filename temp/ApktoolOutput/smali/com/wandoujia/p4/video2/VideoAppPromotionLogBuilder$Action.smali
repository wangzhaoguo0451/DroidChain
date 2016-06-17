.class public final enum Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;
.super Ljava/lang/Enum;
.source "VideoAppPromotionLogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

.field public static final enum DIALOG_DISPLAY:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

.field public static final enum DIALOG_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

.field public static final enum DIALOG_INSTALL:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

.field public static final enum DIALOG_UPDATE:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

.field public static final enum PLAYER_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

.field public static final enum PLAYER_INSTALL:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

.field public static final enum PLAYER_OPEN:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    const-string v1, "PLAYER_INSTALL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->PLAYER_INSTALL:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    .line 17
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    const-string v1, "PLAYER_DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->PLAYER_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    .line 18
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    const-string v1, "PLAYER_OPEN"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->PLAYER_OPEN:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    .line 19
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    const-string v1, "DIALOG_DISPLAY"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DISPLAY:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    .line 20
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    const-string v1, "DIALOG_DOWNLOAD"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    .line 21
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    const-string v1, "DIALOG_INSTALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_INSTALL:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    const-string v1, "DIALOG_UPDATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_UPDATE:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->PLAYER_INSTALL:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->PLAYER_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->PLAYER_OPEN:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DISPLAY:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_DOWNLOAD:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_INSTALL:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->DIALOG_UPDATE:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->$VALUES:[Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->$VALUES:[Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$Action;

    return-object v0
.end method
