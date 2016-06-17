.class public final enum Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;
.super Ljava/lang/Enum;
.source "CardViewModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

.field public static final enum AD:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

.field public static final enum COIN:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

.field public static final enum DOWNLOADED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

.field public static final enum NOT_DOWNLOADED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

.field public static final enum ONLY_PLAY:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

.field public static final enum SUBSCRIBED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

.field public static final enum VERIFIED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;


# instance fields
.field private imageResId:I

.field private isText:Z

.field private isVerticalColor:Z

.field private text:Ljava/lang/String;

.field private textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    const-string v1, "COIN"

    const v2, 0x7f020127

    invoke-direct {v0, v1, v5, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->COIN:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    .line 53
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    const-string v1, "VERIFIED"

    const v2, 0x7f0204ab

    invoke-direct {v0, v1, v6, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->VERIFIED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    .line 54
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    const-string v1, "AD"

    const v2, 0x7f020129

    invoke-direct {v0, v1, v7, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->AD:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    .line 55
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    const-string v1, "SUBSCRIBED"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0587

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->SUBSCRIBED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    .line 56
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    const-string v1, "NOT_DOWNLOADED"

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e061d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->NOT_DOWNLOADED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    .line 57
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    const-string v1, "ONLY_PLAY"

    const/4 v2, 0x5

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e061e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->ONLY_PLAY:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    .line 58
    new-instance v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    const-string v1, "DOWNLOADED"

    const/4 v2, 0x6

    const v3, 0x7f020119

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->DOWNLOADED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->COIN:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->VERIFIED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->AD:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->SUBSCRIBED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->NOT_DOWNLOADED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->ONLY_PLAY:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->DOWNLOADED:Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->$VALUES:[Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-boolean v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isVerticalColor:Z

    .line 79
    iput-boolean v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isText:Z

    .line 80
    iput p3, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->imageResId:I

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
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
    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isVerticalColor:Z

    .line 73
    iput-object p3, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->text:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isText:Z

    .line 75
    iput-boolean v1, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isVerticalColor:Z

    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isVerticalColor:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isText:Z

    .line 68
    iput p4, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->textColor:I

    .line 69
    iput-object p3, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->text:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->$VALUES:[Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;

    return-object v0
.end method


# virtual methods
.method public final getImageResId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->imageResId:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->textColor:I

    return v0
.end method

.method public final isText()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isText:Z

    return v0
.end method

.method public final isVerticalColor()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/wandoujia/p4/card/models/CardViewModel$SubBadgeType;->isVerticalColor:Z

    return v0
.end method
