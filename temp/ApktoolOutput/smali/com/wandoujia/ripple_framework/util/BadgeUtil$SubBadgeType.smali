.class public final enum Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;
.super Ljava/lang/Enum;
.source "BadgeUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

.field public static final enum QUALITY:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

.field public static final enum SPREAD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

.field public static final enum VERIFIED:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

.field public static final enum WANDOU_COIN:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;


# instance fields
.field private imageResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    const-string v1, "WANDOU_COIN"

    sget v2, Lcom/wandoujia/ripple_framework/R$drawable;->ic_explore_meta_coin:I

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->WANDOU_COIN:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    .line 44
    new-instance v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    const-string v1, "QUALITY"

    sget v2, Lcom/wandoujia/ripple_framework/R$drawable;->ic_explore_meta_good:I

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->QUALITY:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    .line 45
    new-instance v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    const-string v1, "SPREAD"

    sget v2, Lcom/wandoujia/ripple_framework/R$drawable;->ic_explore_meta_promotion:I

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->SPREAD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    .line 46
    new-instance v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    const-string v1, "VERIFIED"

    sget v2, Lcom/wandoujia/ripple_framework/R$drawable;->verified:I

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->VERIFIED:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->WANDOU_COIN:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->QUALITY:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->SPREAD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->VERIFIED:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->$VALUES:[Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->imageResId:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->$VALUES:[Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    return-object v0
.end method


# virtual methods
.method public final getImageResId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->imageResId:I

    return v0
.end method
