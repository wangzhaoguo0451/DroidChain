.class public final enum Lcom/wandoujia/lbs/LocationProvider$CoordinateType;
.super Ljava/lang/Enum;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/lbs/LocationProvider$CoordinateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

.field public static final enum GCJ02:Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

.field public static final enum WGS84:Lcom/wandoujia/lbs/LocationProvider$CoordinateType;


# instance fields
.field private final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    const-string v1, "WGS84"

    const-string v2, "WGS-84"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;->WGS84:Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    new-instance v0, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    const-string v1, "GCJ02"

    const-string v2, "gcj02"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;->GCJ02:Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    sget-object v1, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;->WGS84:Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;->GCJ02:Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;->$VALUES:[Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;->typeName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/lbs/LocationProvider$CoordinateType;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/lbs/LocationProvider$CoordinateType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;->$VALUES:[Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    invoke-virtual {v0}, [Lcom/wandoujia/lbs/LocationProvider$CoordinateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/lbs/LocationProvider$CoordinateType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wandoujia/lbs/LocationProvider$CoordinateType;->typeName:Ljava/lang/String;

    return-object v0
.end method
