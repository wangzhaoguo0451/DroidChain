.class public final enum Lcom/wandoujia/log/MuceNetworkType;
.super Ljava/lang/Enum;
.source "MuceNetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/log/MuceNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/log/MuceNetworkType;

.field public static final enum MOBILE:Lcom/wandoujia/log/MuceNetworkType;

.field public static final enum NONE:Lcom/wandoujia/log/MuceNetworkType;

.field public static final enum WIFI:Lcom/wandoujia/log/MuceNetworkType;


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/wandoujia/log/MuceNetworkType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/log/MuceNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/log/MuceNetworkType;->NONE:Lcom/wandoujia/log/MuceNetworkType;

    .line 8
    new-instance v0, Lcom/wandoujia/log/MuceNetworkType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/log/MuceNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/log/MuceNetworkType;->WIFI:Lcom/wandoujia/log/MuceNetworkType;

    .line 9
    new-instance v0, Lcom/wandoujia/log/MuceNetworkType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/log/MuceNetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/log/MuceNetworkType;->MOBILE:Lcom/wandoujia/log/MuceNetworkType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/log/MuceNetworkType;

    sget-object v1, Lcom/wandoujia/log/MuceNetworkType;->NONE:Lcom/wandoujia/log/MuceNetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/log/MuceNetworkType;->WIFI:Lcom/wandoujia/log/MuceNetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/log/MuceNetworkType;->MOBILE:Lcom/wandoujia/log/MuceNetworkType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/log/MuceNetworkType;->$VALUES:[Lcom/wandoujia/log/MuceNetworkType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/wandoujia/log/MuceNetworkType;->intValue:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/log/MuceNetworkType;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/wandoujia/log/MuceNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/log/MuceNetworkType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/log/MuceNetworkType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/wandoujia/log/MuceNetworkType;->$VALUES:[Lcom/wandoujia/log/MuceNetworkType;

    invoke-virtual {v0}, [Lcom/wandoujia/log/MuceNetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/log/MuceNetworkType;

    return-object v0
.end method


# virtual methods
.method public final getIntValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/wandoujia/log/MuceNetworkType;->intValue:I

    return v0
.end method
