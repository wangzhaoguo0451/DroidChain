.class public final enum Lcom/wandoujia/lbs/LocationProvider$ProviderType;
.super Ljava/lang/Enum;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/lbs/LocationProvider$ProviderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/lbs/LocationProvider$ProviderType;

.field public static final enum AMAP:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

.field public static final enum GPS:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

.field public static final enum NETWORK:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

.field public static final enum WDJ:Lcom/wandoujia/lbs/LocationProvider$ProviderType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    const-string v1, "GPS"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/lbs/LocationProvider$ProviderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;->GPS:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    new-instance v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/lbs/LocationProvider$ProviderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;->NETWORK:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    new-instance v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    const-string v1, "AMAP"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/lbs/LocationProvider$ProviderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;->AMAP:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    new-instance v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    const-string v1, "WDJ"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/lbs/LocationProvider$ProviderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;->WDJ:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    sget-object v1, Lcom/wandoujia/lbs/LocationProvider$ProviderType;->GPS:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/lbs/LocationProvider$ProviderType;->NETWORK:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/lbs/LocationProvider$ProviderType;->AMAP:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/lbs/LocationProvider$ProviderType;->WDJ:Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;->$VALUES:[Lcom/wandoujia/lbs/LocationProvider$ProviderType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/lbs/LocationProvider$ProviderType;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/lbs/LocationProvider$ProviderType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/wandoujia/lbs/LocationProvider$ProviderType;->$VALUES:[Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    invoke-virtual {v0}, [Lcom/wandoujia/lbs/LocationProvider$ProviderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/lbs/LocationProvider$ProviderType;

    return-object v0
.end method
