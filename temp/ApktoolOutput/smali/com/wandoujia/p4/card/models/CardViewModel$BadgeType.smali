.class public final enum Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;
.super Ljava/lang/Enum;
.source "CardViewModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

.field public static final enum AWARD:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

.field public static final enum COUPON:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

.field public static final enum EXCLUSIVE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

.field public static final enum GIFT:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

.field public static final enum NEW_ARRIVAL:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

.field public static final enum UPDATE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

.field public static final enum UPDATE_LITE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;


# instance fields
.field private imageResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    const-string v1, "UPDATE"

    const v2, 0x7f020124

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->UPDATE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    .line 31
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    const-string v1, "UPDATE_LITE"

    const v2, 0x7f020130

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->UPDATE_LITE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    .line 32
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    const-string v1, "NEW_ARRIVAL"

    const v2, 0x7f020123

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->NEW_ARRIVAL:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    .line 33
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    const-string v1, "EXCLUSIVE"

    const v2, 0x7f020121

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->EXCLUSIVE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    .line 34
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    const-string v1, "GIFT"

    const v2, 0x7f020122

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->GIFT:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    .line 35
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    const-string v1, "AWARD"

    const/4 v2, 0x5

    const v3, 0x7f020120

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->AWARD:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    .line 36
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    const-string v1, "COUPON"

    const/4 v2, 0x6

    const v3, 0x7f02011f

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->COUPON:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->UPDATE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->UPDATE_LITE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->NEW_ARRIVAL:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->EXCLUSIVE:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->GIFT:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->AWARD:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->COUPON:Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->$VALUES:[Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->imageResId:I

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->$VALUES:[Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;

    return-object v0
.end method


# virtual methods
.method public final getImageResId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$BadgeType;->imageResId:I

    return v0
.end method
