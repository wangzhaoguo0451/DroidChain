.class public final enum Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;
.super Ljava/lang/Enum;
.source "BadgeUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

.field public static final enum DESIGN_AWARD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

.field public static final enum GIFT:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

.field public static final enum NEW_PRODUCT:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

.field public static final enum PUBLISH:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;


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

    .line 27
    new-instance v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    const-string v1, "NEW_PRODUCT"

    sget v2, Lcom/wandoujia/ripple_framework/R$drawable;->ic_explore_badge_new:I

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->NEW_PRODUCT:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    .line 28
    new-instance v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    const-string v1, "GIFT"

    sget v2, Lcom/wandoujia/ripple_framework/R$drawable;->ic_explore_badge_gift:I

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->GIFT:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    .line 29
    new-instance v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    const-string v1, "DESIGN_AWARD"

    sget v2, Lcom/wandoujia/ripple_framework/R$drawable;->ic_explore_badge_design:I

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->DESIGN_AWARD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    .line 30
    new-instance v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    const-string v1, "PUBLISH"

    sget v2, Lcom/wandoujia/ripple_framework/R$drawable;->ic_explore_badge_new:I

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->PUBLISH:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->NEW_PRODUCT:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->GIFT:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->DESIGN_AWARD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->PUBLISH:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->$VALUES:[Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->imageResId:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->$VALUES:[Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    return-object v0
.end method


# virtual methods
.method public final getImageResId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->imageResId:I

    return v0
.end method
