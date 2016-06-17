.class public final enum Lcom/wandoujia/lbs/Locator$Providers;
.super Ljava/lang/Enum;
.source "Locator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/lbs/Locator$Providers;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/lbs/Locator$Providers;

.field public static final enum AMAP:Lcom/wandoujia/lbs/Locator$Providers;

.field public static final enum SYSTEM:Lcom/wandoujia/lbs/Locator$Providers;


# instance fields
.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/wandoujia/lbs/Locator$Providers;

    const-string v1, "AMAP"

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/lbs/Locator$Providers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/lbs/Locator$Providers;->AMAP:Lcom/wandoujia/lbs/Locator$Providers;

    new-instance v0, Lcom/wandoujia/lbs/Locator$Providers;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/lbs/Locator$Providers;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/lbs/Locator$Providers;->SYSTEM:Lcom/wandoujia/lbs/Locator$Providers;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/lbs/Locator$Providers;

    sget-object v1, Lcom/wandoujia/lbs/Locator$Providers;->AMAP:Lcom/wandoujia/lbs/Locator$Providers;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/lbs/Locator$Providers;->SYSTEM:Lcom/wandoujia/lbs/Locator$Providers;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/lbs/Locator$Providers;->$VALUES:[Lcom/wandoujia/lbs/Locator$Providers;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/wandoujia/lbs/Locator$Providers;->priority:I

    .line 32
    return-void
.end method

.method static synthetic access$100$23ef0103$168f932b(Lcom/wandoujia/lbs/Locator$Providers;Leax;)Lmv;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/wandoujia/lbs/Locator$Providers;->newLocationProvider$54176553$2c879701(Leax;)Lmv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/wandoujia/lbs/Locator$Providers;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/wandoujia/lbs/Locator$Providers;->priority:I

    return v0
.end method

.method private newLocationProvider$54176553$2c879701(Leax;)Lmv;
    .locals 2
    .parameter

    .prologue
    .line 35
    sget-object v0, Lemf;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/lbs/Locator$Providers;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    new-instance v0, Lemc;

    invoke-direct {v0, p1}, Lemc;-><init>(Leax;)V

    goto :goto_0

    .line 39
    :pswitch_1
    new-instance v0, Lemg;

    invoke-direct {v0, p1}, Lemg;-><init>(Leax;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/lbs/Locator$Providers;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/wandoujia/lbs/Locator$Providers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/lbs/Locator$Providers;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/lbs/Locator$Providers;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/wandoujia/lbs/Locator$Providers;->$VALUES:[Lcom/wandoujia/lbs/Locator$Providers;

    invoke-virtual {v0}, [Lcom/wandoujia/lbs/Locator$Providers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/lbs/Locator$Providers;

    return-object v0
.end method
