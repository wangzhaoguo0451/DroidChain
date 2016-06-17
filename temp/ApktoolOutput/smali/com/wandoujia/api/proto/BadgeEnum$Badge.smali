.class public final enum Lcom/wandoujia/api/proto/BadgeEnum$Badge;
.super Ljava/lang/Enum;
.source "BadgeEnum.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/api/proto/BadgeEnum$Badge;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/api/proto/BadgeEnum$Badge;

.field public static final enum AWARD:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

.field public static final enum FAVORITE:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

.field public static final enum GIFT:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

.field public static final enum NEW_PRODUCT:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

.field public static final enum PUBLISH:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

.field public static final enum QUALITY:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

.field public static final enum SPREAD:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

.field public static final enum UPDATE:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

.field public static final enum VERIFIED:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

.field public static final enum WANDOU_COIN:Lcom/wandoujia/api/proto/BadgeEnum$Badge;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 44
    new-instance v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    const-string v1, "NEW_PRODUCT"

    invoke-direct {v0, v1, v8, v4}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->NEW_PRODUCT:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    .line 48
    new-instance v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    const-string v1, "GIFT"

    invoke-direct {v0, v1, v4, v5}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->GIFT:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    .line 52
    new-instance v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    const-string v1, "AWARD"

    invoke-direct {v0, v1, v5, v6}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->AWARD:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    .line 56
    new-instance v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    const-string v1, "WANDOU_COIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->WANDOU_COIN:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    .line 60
    new-instance v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    const-string v1, "QUALITY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->QUALITY:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    .line 64
    new-instance v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    const-string v1, "SPREAD"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->SPREAD:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    .line 68
    new-instance v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    const-string v1, "UPDATE"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->UPDATE:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    .line 72
    new-instance v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    const-string v1, "PUBLISH"

    const/4 v2, 0x7

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->PUBLISH:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    .line 76
    new-instance v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    const-string v1, "VERIFIED"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->VERIFIED:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    .line 80
    new-instance v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    const-string v1, "FAVORITE"

    const/16 v2, 0x9

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->FAVORITE:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    .line 39
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    sget-object v1, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->NEW_PRODUCT:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    aput-object v1, v0, v8

    sget-object v1, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->GIFT:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->AWARD:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->WANDOU_COIN:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    aput-object v2, v0, v1

    sget-object v1, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->QUALITY:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->SPREAD:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->UPDATE:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->PUBLISH:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    aput-object v2, v0, v1

    sget-object v1, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->VERIFIED:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    aput-object v1, v0, v7

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->FAVORITE:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->$VALUES:[Lcom/wandoujia/api/proto/BadgeEnum$Badge;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->value:I

    .line 86
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/api/proto/BadgeEnum$Badge;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/api/proto/BadgeEnum$Badge;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->$VALUES:[Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v0}, [Lcom/wandoujia/api/proto/BadgeEnum$Badge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->value:I

    return v0
.end method
