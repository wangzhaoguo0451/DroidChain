.class public final enum Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;
.super Ljava/lang/Enum;
.source "GoldenCardModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

.field public static final enum AWARD:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

.field public static final enum EMPTY:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

.field public static final enum GIFT:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

.field public static final enum NEW:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;


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

    .line 14
    new-instance v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->EMPTY:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    .line 15
    new-instance v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    const-string v1, "NEW"

    const v2, 0x7f02027f

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->NEW:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    .line 16
    new-instance v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    const-string v1, "GIFT"

    const v2, 0x7f02027e

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->GIFT:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    .line 17
    new-instance v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    const-string v1, "AWARD"

    const v2, 0x7f02027d

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->AWARD:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    sget-object v1, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->EMPTY:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->NEW:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->GIFT:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->AWARD:Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->$VALUES:[Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->imageResId:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->$VALUES:[Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;

    return-object v0
.end method


# virtual methods
.method public final getImageResId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/wandoujia/p4/model/GoldenCardModel$CornerMarkType;->imageResId:I

    return v0
.end method
