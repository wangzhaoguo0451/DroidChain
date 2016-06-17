.class public final enum Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;
.super Ljava/lang/Enum;
.source "VideoAppPromotionLogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

.field public static final enum PLAYER:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

.field public static final enum PRIVATE:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

.field public static final enum SOURCE_SELECT:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    const-string v1, "PLAYER"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PLAYER:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    .line 27
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    const-string v1, "SOURCE_SELECT"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->SOURCE_SELECT:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    .line 28
    new-instance v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PRIVATE:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PLAYER:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->SOURCE_SELECT:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->PRIVATE:Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->$VALUES:[Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->$VALUES:[Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/VideoAppPromotionLogBuilder$FromType;

    return-object v0
.end method
